# TSFastRipple_CIVE30_N8.do
# Timing verification of FastRipple on EP4CE30F23C6: post-fit netlist with SDF delays
# (FastRipple_CIVE30_N8_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSFastRipple_CIVE30_N8.txt
echo "=== TSFastRipple_CIVE30_N8: FastRipple_CIVE30_N8.vho + FastRipple_CIVE30_N8_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists FastRipple_CIVE30_N8]} { vlib FastRipple_CIVE30_N8 }
vcom -quiet -work FastRipple_CIVE30_N8 ModelSim/FastRipple_CIVE30_N8.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSFastRipple_CIVE30_N8.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that slowest-corner file)
vsim -t 1ps -voptargs=+acc -gN=8 -gTestVectorFile=Adder00_N8.tvs -sdfmax /TBAdder/DUT=ModelSim/FastRipple_CIVE30_N8_vhd.sdo work.TSFastRipple_CIVE30_N8

# Wave window layout (GUI only; skipped in batch runs), run every vector, then fit the whole run on screen
if {![batch_mode]} { do wave.do }
run -all
if {![batch_mode]} { wave zoom full }

# Stop capturing: later output goes back to the default transcript
transcript file transcript
