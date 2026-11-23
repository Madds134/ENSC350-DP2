# TSConditionalSumKeep_CIVE30_N32.do
# Timing verification of ConditionalSumKeep on EP4CE30F23C6: post-fit netlist with SDF delays
# (ConditionalSumKeep_CIVE30_N32_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSConditionalSumKeep_CIVE30_N32.txt
echo "=== TSConditionalSumKeep_CIVE30_N32: ConditionalSumKeep_CIVE30_N32.vho + ConditionalSumKeep_CIVE30_N32_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists ConditionalSumKeep_CIVE30_N32]} { vlib ConditionalSumKeep_CIVE30_N32 }
vcom -quiet -work ConditionalSumKeep_CIVE30_N32 ModelSim/ConditionalSumKeep_CIVE30_N32.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSConditionalSumKeep_CIVE30_N32.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that slowest-corner file)
vsim -t 1ps -voptargs=+acc -gN=32 -gTestVectorFile=Adder00_N32.tvs -sdfmax /TBAdder/DUT=ModelSim/ConditionalSumKeep_CIVE30_N32_vhd.sdo work.TSConditionalSumKeep_CIVE30_N32

# Wave window layout (GUI only; skipped in batch runs), run every vector, then fit the whole run on screen
if {![batch_mode]} { do wave.do }
run -all
if {![batch_mode]} { wave zoom full }

# Stop capturing: later output goes back to the default transcript
transcript file transcript
