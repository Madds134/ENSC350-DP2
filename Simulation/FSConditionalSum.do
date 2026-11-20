# FSConditionalSum.do
# Functional verification of the conditional-sum topology

# Close any simulation that is already running
catch {quit -sim}

# Start capturing output, and record which configuration this run uses
transcript file FSConditionalSum.txt
echo "=== FSConditionalSum: Adder(ConditionalSum), functional ==="

# Compile every source and the configurations (CompileAll.do keeps the dependency order)
do CompileAll.do

# Load the configuration, not TBAdder, so the DUT is bound to Adder(ConditionalSum)
# (+acc keeps every signal visible in the wave window)
vsim -voptargs=+acc work.FSConditionalSum

# Wave window layout, run every vector, then fit the whole run on screen
do wave.do
run -all
wave zoom full

# Stop capturing: later output goes back to the default transcript
transcript file transcript
