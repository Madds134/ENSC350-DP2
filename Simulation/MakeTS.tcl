# MakeTS.tcl
# Writes the timing-simulation files for every design candidate in ../Candidates.tcl:
#   ../SourceCode/TimingConfigurations/TS<Candidate>.vhd  configuration binding TBAdder's DUT to that netlist
#   TS<Candidate>.do                                      script: compile netlist + TB + configuration, run with SDF
#   RunAllTS.do                                           runs every TS script, then CollectTiming.tcl
# Run once from the Simulation folder (ModelSim: source MakeTS.tcl), and again if the candidate list changes

set Here [file dirname [file normalize [info script]]]
source [file join $Here .. Candidates.tcl]
set ConfigDir [file join $Here .. SourceCode TimingConfigurations]
file mkdir $ConfigDir

# Write Text to the file at Path
proc WriteFile {Path Text} {
    set Out [open $Path w]
    puts -nonewline $Out $Text
    close $Out
}

set RunAll "# RunAllTS.do\n# Runs the timing simulation of every design candidate, then collects the worst-case delays\n\n"

foreach C $Candidates {
    lassign $C Rev Family Device
    set Topo [lindex [split $Rev _] 0]

    # Configuration: every netlist declares the same entity Adder, so each is compiled into
    # its own library (named after the candidate) and the configuration selects that library
    WriteFile [file join $ConfigDir TS$Rev.vhd] \
"-- TS$Rev.vhd
-- Timing configuration: binds TBAdder's DUT to the post-fit netlist of $Topo on $Device
-- (TS$Rev.do compiles $Rev.vho into library $Rev; each netlist declares entity Adder,
--  so each candidate has its own library)
library $Rev;
configuration TS$Rev of TBAdder is
    for Test
        for DUT : Adder
            use entity $Rev.Adder(structure);
        end for;
    end for;
end configuration TS$Rev;
"

    # Script: same layout as the FS scripts, plus the netlist library and the SDF delays
    WriteFile [file join $Here TS$Rev.do] \
"# TS$Rev.do
# Timing verification of $Topo on $Device: post-fit netlist with SDF delays
# (${Rev}_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TS$Rev.txt
echo \"=== TS$Rev: $Rev.vho + ${Rev}_vhd.sdo, timing ===\"

# Compile the timing model into its own library (every netlist declares entity Adder)
if {!\[file exists $Rev\]} { vlib $Rev }
vcom -quiet -work $Rev ModelSim/$Rev.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TS$Rev.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that slowest-corner file)
vsim -t 1ps -voptargs=+acc -sdfmax /TBAdder/DUT=ModelSim/${Rev}_vhd.sdo work.TS$Rev

# Wave window layout, run every vector, then fit the whole run on screen
do wave.do
run -all
wave zoom full

# Stop capturing: later output goes back to the default transcript
transcript file transcript
"
    append RunAll "do TS$Rev.do\n"
}

append RunAll "\n# Worst-case delays of every candidate into ../Documentation/OutputFiles/TimingResults.csv\nsource CollectTiming.tcl\n"
WriteFile [file join $Here RunAllTS.do] $RunAll
puts "MakeTS: wrote [llength $Candidates] configurations, [llength $Candidates] TS scripts and RunAllTS.do"
