# FSKoggeStone.do
# Functional verification of the Kogge-Stone topology

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which configuration this run uses
transcript file FSKoggeStone.txt
echo "=== FSKoggeStone: Adder(KoggeStone), functional ==="

# Compile every source and the configurations (CompileAll.do keeps the dependency order)
do CompileAll.do

# Load the configuration, not TBAdder, so the DUT is bound to Adder(KoggeStone)
# (+acc keeps every signal visible in the wave window)
vsim -voptargs=+acc work.FSKoggeStone

# Wave window layout, run every vector, then fit the whole run on screen
do wave.do
run -all
wave zoom full

# Stop capturing: later output goes back to the default transcript
transcript file transcript
