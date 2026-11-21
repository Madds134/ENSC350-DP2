# TSBrentKung_AII.do
# Timing verification of BrentKung on EP2AGX45DF29C6: post-fit netlist with SDF delays
# (BrentKung_AII_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSBrentKung_AII.txt
echo "=== TSBrentKung_AII: BrentKung_AII.vho + BrentKung_AII_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists BrentKung_AII]} { vlib BrentKung_AII }
vcom -quiet -work BrentKung_AII ModelSim/BrentKung_AII.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSBrentKung_AII.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that slowest-corner file)
vsim -t 1ps -voptargs=+acc -sdfmax /TBAdder/DUT=ModelSim/BrentKung_AII_vhd.sdo work.TSBrentKung_AII

# Wave window layout, run every vector, then fit the whole run on screen
do wave.do
run -all
wave zoom full

# Stop capturing: later output goes back to the default transcript
transcript file transcript
