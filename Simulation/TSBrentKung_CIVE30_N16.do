# TSBrentKung_CIVE30_N16.do
# Timing verification of BrentKung on EP4CE30F23C6: post-fit netlist with SDF delays
# (BrentKung_CIVE30_N16_vhd.sdo is Quartus's default corner for the family: slow 85C on Cyclone IV, slow 0C on Arria II)

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which candidate this run uses
transcript file TSBrentKung_CIVE30_N16.txt
echo "=== TSBrentKung_CIVE30_N16: BrentKung_CIVE30_N16.vho + BrentKung_CIVE30_N16_vhd.sdo, timing ==="

# Compile the timing model into its own library (every netlist declares entity Adder)
if {![file exists BrentKung_CIVE30_N16]} { vlib BrentKung_CIVE30_N16 }
vcom -quiet -work BrentKung_CIVE30_N16 ModelSim/BrentKung_CIVE30_N16.vho

# Compile the testbench and this candidate's timing configuration
vcom -2008 -quiet TBAdder.vhd
vcom -2008 -quiet ../SourceCode/TimingConfigurations/TSBrentKung_CIVE30_N16.vhd

# Load the configuration with the SDF delays on the DUT
# (-t 1ps matches the SDF time scale; -sdfmax takes the maximum delays from that slowest-corner file)
vsim -t 1ps -voptargs=+acc -gN=16 -gTestVectorFile=Adder00_N16.tvs -sdfmax /TBAdder/DUT=ModelSim/BrentKung_CIVE30_N16_vhd.sdo work.TSBrentKung_CIVE30_N16

# Wave window layout (GUI only; skipped in batch runs), run every vector, then fit the whole run on screen
if {![batch_mode]} { do wave.do }
run -all
if {![batch_mode]} { wave zoom full }

# Stop capturing: later output goes back to the default transcript
transcript file transcript
