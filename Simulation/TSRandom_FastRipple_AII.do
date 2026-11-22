# TSRandom_FastRipple_AII.do
# Timing verification of FastRipple on EP2AGX45DF29C6: post-fit netlist with SDF delays
# (FastRipple_AII_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSRandom_FastRipple_AII.txt
echo "=== TSRandom_FastRipple_AII: FastRipple_AII.vho + FastRipple_AII_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists FastRipple_AII]} { vlib FastRipple_AII }
vcom -quiet -work FastRipple_AII ModelSim/FastRipple_AII.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSFastRipple_AII.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that corner's file)
vsim -t 1ps -voptargs=+acc -gTestVectorFile=AdderRandom.tvs -sdfmax /TBAdder/DUT=ModelSim/FastRipple_AII_vhd.sdo work.TSFastRipple_AII

# Wave window layout (GUI only; skipped in batch runs), run every vector, then fit the whole run on screen
if {![batch_mode]} { do wave.do }
run -all
if {![batch_mode]} { wave zoom full }

# Stop capturing: later output goes back to the default transcript
transcript file transcript
