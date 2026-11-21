# SynthAll.tcl
# Creates a Quartus revision for every design candidate, compiles it, and collects area results
# quartus_sh -t SynthAll.tcl (runs all candidates)
# quartus_sh -t SynthAll.tcl Ripple_CIV Ripple_AII (runs only named candidates)

package require ::quartus::project
package require ::quartus::flow
package require ::quartus::report

# Adder width: the generic N of Adder entity
set N 64

# Target FPGAs
set FPGAs {
    {CIV "Cyclone IV E" EP4CE115F29C7 1.2V}
    {CIVE30 "Cyclone IV E" EP4CE30F23C6 1.2V}
    {AII "Arria II GX" EP2AGX45DF29C6 0.9V}
}

# Topologies: name, and the source files it needs besides Adder.vhd
set Topologies {
    {Ripple         {AdderBaseline.vhd}}
    {FastRipple     {AdderFastRipple.vhd}}
    {ConditionalSum {ConditionalSumCarry.vhd AdderConditionalSum.vhd}}
    {BlockLookahead {LookaheadCarryNet.vhd AdderBlockLookahead.vhd}}
    {BrentKung      {BLAN.vhd AdderBrentKung.vhd}}
    {KoggeStone     {BLAN.vhd BLANKoggeStone.vhd AdderKoggeStone.vhd}}
    {CarrySkip      {AdderCarrySkip.vhd}}
}

# Build the candidate list: <Topology>_<FPGA>, plus _N<width> when N is not 64
set Candidates {}
foreach T $Topologies {
    lassign $T Topo Files
    foreach F $FPGAs {
        lassign $F Suffix Family Device Voltage
        set Rev ${Topo}_${Suffix}
        if {$N != 64} { append Rev _N$N }
        lappend Candidates [list $Rev $Family $Device $Voltage $Files]
    }
}

# Candidates named on the command line (empty = all of them)
set Wanted $quartus(args)
set Failed {}

# Open the project; Ripple_CIV is the template every new revision copies its settings from
project_open DP2 -revision Ripple_CIV

foreach C $Candidates {
    lassign $C Rev Family Device Voltage Files
    if {[llength $Wanted] > 0 && [lsearch -exact $Wanted $Rev] < 0} { continue }
    post_message "==================== $Rev ($Device) ===================="

    # Create the revision from the baseline's settings (VHDL-2008, EDA timing netlist, Adder.sdc)
    if {![revision_exists $Rev]} { create_revision $Rev -based_on Ripple_CIV }
    set_current_revision $Rev

    # Target device for this candidate
    set_global_assignment -name FAMILY $Family
    set_global_assignment -name DEVICE $Device
    set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE $Voltage

    # Only this topology's files, so Quartus cannot bind a different architecture of Adder
    remove_all_global_assignments -name VHDL_FILE
    set_global_assignment -name VHDL_FILE SourceCode/Adder.vhd
    foreach File $Files { set_global_assignment -name VHDL_FILE SourceCode/$File }

    # The same timing constraint for every candidate, and the adder width
    set_global_assignment -name SDC_FILE Adder.sdc
    set_parameter -name N $N
    export_assignments

    # Full compile: synthesis, fitter, assembler, timing analysis, EDA netlist (.vho/.sdo)
    if {[catch {execute_flow -compile} Err]} {
        post_message -type error "$Rev failed: $Err"
        lappend Failed $Rev
    }
}

# Cost of every compiled candidate into a CSV (a working file, kept out of the zip)
file mkdir Documentation/OutputFiles
set Csv [open Documentation/OutputFiles/CostResults.csv w]
puts $Csv "Candidate,Device,N,LE,ALUT,ALM"
foreach C $Candidates {
    lassign $C Rev Family Device
    if {![file exists output_files/$Rev.fit.summary]} { continue }
    set_current_revision $Rev
    load_report
    set Row [list $Rev $Device $N]
    # Each family reports different units: LE on Cyclone IV, ALUT and ALM on Arria II
    foreach Kind {-le -alut -alm} {
        if {[catch {get_fitter_resource_usage $Kind} Value]} { set Value "" }
        lappend Row [string map {, ""} $Value]
    }
    unload_report
    puts $Csv [join $Row ,]
}
close $Csv

# Merge the synthesis and fitter summaries of every candidate into one text file (a deliverable)
# (Timing summaries are added only after the delay predictions are logged)
set Out [open Documentation/OutputFiles/QuartusSummary.txt w]
foreach C $Candidates {
    set Rev [lindex $C 0]
    foreach Stage {map fit} {
        set File output_files/$Rev.$Stage.summary
        if {![file exists $File]} { continue }
        puts $Out "==================== $Rev : $Stage summary ===================="
        set In [open $File r]
        puts $Out [read $In]
        close $In
    }
}
close $Out

# Leave the project on the baseline revision and report any failures
set_current_revision Ripple_CIV
project_close
if {[llength $Failed] > 0} {
    post_message -type error "Failed: $Failed"
} else {
    post_message "All requested candidates compiled"
}