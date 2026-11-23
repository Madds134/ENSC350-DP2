# TSRandom_ConditionalSum_CIV.do
# Timing verification of ConditionalSum on EP4CE115F29C7: post-fit netlist with SDF delays
# (ConditionalSum_CIV_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSRandom_ConditionalSum_CIV.txt
echo "=== TSRandom_ConditionalSum_CIV: ConditionalSum_CIV.vho + ConditionalSum_CIV_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists ConditionalSum_CIV]} { vlib ConditionalSum_CIV }
vcom -quiet -work ConditionalSum_CIV ModelSim/ConditionalSum_CIV.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSConditionalSum_CIV.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that corner's file)
vsim -t 1ps -voptargs=+acc -gTestVectorFile=AdderRandom.tvs -sdfmax /TBAdder/DUT=ModelSim/ConditionalSum_CIV_vhd.sdo work.TSConditionalSum_CIV

# Wave window layout (GUI only; skipped in batch runs), run every vector, then fit the whole run on screen
if {![batch_mode]} { do wave.do }
run -all
if {![batch_mode]} { wave zoom full }

# Stop capturing: later output goes back to the default transcript
transcript file transcript
