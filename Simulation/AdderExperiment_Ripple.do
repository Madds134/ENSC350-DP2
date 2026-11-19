# AdderExperiment_Ripple.do
# Functional verification of the ripple topology

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output
transcript file AdderExperiment_Ripple.txt

# Compile the sources for this topology, then its testbench
if {![file exists work]} { vlib work }
vcom -2008 -work work ../SourceCode/Adder.vhd
vcom -2008 -work work ../SourceCode/AdderBaseline.vhd
vcom -2008 -work work TBAdder_Ripple.vhd

# Load the testbench (+acc keeps every signal visible in the wave window)
vsim -voptargs=+acc work.TBAdder_Ripple

# Wave window layout, run every vector, then fit the whole run on screen
do wave.do
run -all
wave zoom full

# Stop capturing: later output goes back to the default transcript
transcript file transcript
