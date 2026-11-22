# MakeTS.tcl
# Writes the timing-simulation files for every design candidate in ../Candidates.tcl:
#   ../SourceCode/TimingConfigurations/TS<Candidate>.vhd  configuration binding TBAdder's DUT to that netlist
#   TS<Candidate>.do                                      script: compile netlist + TB + configuration, run with SDF
#   RunAllTS.do (RunAllTS_N<N>.do in the sweep)           runs every TS script, then CollectTiming.tcl
# The width comes from Candidates.tcl (environment variable ADDER_N, default 64)
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

# At N = 64 the testbench defaults apply; for the bonus sweep each run sets the width and its vector file
if {$N == 64} {
    set RunAllName RunAllTS.do
    set Generics ""
} else {
    set RunAllName RunAllTS_N$N.do
    set Generics " -gN=$N -gTestVectorFile=Adder00_N$N.tvs"
}
# Optional second vector set (e.g. the 500 random vectors): environment variable ADDER_VECTORS=<file>.tvs
# writes TSRandom_<Candidate>.do scripts and RunAllTS_Random.do, each with its own transcript,
# so the directed-vector results (TS<Candidate>.txt) are kept
if {[info exists ::env(ADDER_VECTORS)]} {
    set Prefix TSRandom_
    set RunAllName RunAllTS_Random.do
    append Generics " -gTestVectorFile=$::env(ADDER_VECTORS)"
} else {
    set Prefix TS
}
set RunAll "# $RunAllName\n# Runs the timing simulation of every design candidate (N = $N), then collects the worst-case delays\n\n"

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
    WriteFile [file join $Here ${Prefix}$Rev.do] \
"# ${Prefix}$Rev.do
# Timing verification of $Topo on $Device: post-fit netlist with SDF delays
# (${Rev}_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file ${Prefix}$Rev.txt
echo \"=== ${Prefix}$Rev: $Rev.vho + ${Rev}_vhd.sdo, timing ===\"

# Compile the timing model into its own library (every netlist declares entity Adder)
if {!\[file exists $Rev\]} { vlib $Rev }
vcom -quiet -work $Rev ModelSim/$Rev.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TS$Rev.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that corner's file)
vsim -t 1ps -voptargs=+acc${Generics} -sdfmax /TBAdder/DUT=ModelSim/${Rev}_vhd.sdo work.TS$Rev

# Wave window layout (GUI only; skipped in batch runs), run every vector, then fit the whole run on screen
if {!\[batch_mode\]} { do wave.do }
run -all
if {!\[batch_mode\]} { wave zoom full }

# Stop capturing: later output goes back to the default transcript
transcript file transcript
"
    append RunAll "do ${Prefix}$Rev.do\n"
}

append RunAll "\n# Worst-case delays of every candidate into ../Documentation/OutputFiles/TimingResults.csv\nsource CollectTiming.tcl\n"
WriteFile [file join $Here $RunAllName] $RunAll
puts "MakeTS: wrote [llength $Candidates] configurations, [llength $Candidates] TS scripts and $RunAllName"
