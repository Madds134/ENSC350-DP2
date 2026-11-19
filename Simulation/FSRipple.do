# FSRipple.do - functional simulation of the Ripple topology (architecture Baseline)
# Runs configuration FSRipple of TBAdder; output captured in FSRipple.txt

catch {quit -sim}                       ;# close any simulation already loaded

transcript file FSRipple.txt            ;# redirect output to this run's own transcript
echo "=== FSRipple: Adder(Baseline), functional ==="

do CompileAll.do                        ;# compile all sources + configurations

vsim -voptargs=+acc work.FSRipple       ;# start the CONFIGURATION, not TBAdder
do wave.do                              ;# formatted wave window
run -all
wave zoom full

transcript file transcript              ;# redirection off: back to the default transcript
