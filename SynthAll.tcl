# SynthAll.tcl
# Creates a Quartus revision for every design candidate, compiles it, then collects the cost results
# Run from the project root with the Quartus GUI closed:
#   quartus_sh -t SynthAll.tcl                        (all candidates)
#   quartus_sh -t SynthAll.tcl Ripple_CIV Ripple_AII  (only the named candidates)

package require ::quartus::project
package require ::quartus::flow

# The candidate list (N, FPGAs, Topologies -> Candidates), shared with CollectResults.tcl
source Candidates.tcl

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

# Leave the project on the baseline revision
set_current_revision Ripple_CIV
project_close

# Cost table + merged summary from the reports (CollectResults.tcl can also be rerun on its own)
source CollectResults.tcl

if {[llength $Failed] > 0} {
    post_message -type error "Failed: $Failed"
} else {
    post_message "All requested candidates compiled"
}
