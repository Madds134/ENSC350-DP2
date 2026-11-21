# TSRipple_CIVE30.do
# Timing verification of Ripple on EP4CE30F23C6: post-fit netlist with SDF delays
# (Ripple_CIVE30_vhd.sdo is Quartus's default, the slowest corner: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSRipple_CIVE30.txt
echo "=== TSRipple_CIVE30: Ripple_CIVE30.vho + Ripple_CIVE30_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists Ripple_CIVE30]} { vlib Ripple_CIVE30 }
vcom -quiet -work Ripple_CIVE30 ModelSim/Ripple_CIVE30.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSRipple_CIVE30.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that slowest-corner file)
vsim -t 1ps -voptargs=+acc -sdfmax /TBAdder/DUT=ModelSim/Ripple_CIVE30_vhd.sdo work.TSRipple_CIVE30

# Wave window layout, run every vector, then fit the whole run on screen
do wave.do
run -all
wave zoom full

# Stop capturing: later output goes back to the default transcript
transcript file transcript
