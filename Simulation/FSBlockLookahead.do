# FSBlockLookahead.do - functional simulation of the BlockLookahead topology (recursive BLAN)
# Runs configuration FSBlockLookahead of TBAdder; output captured in FSBlockLookahead.txt

catch {quit -sim}                       ;# close any simulation already loaded

transcript file FSBlockLookahead.txt    ;# redirect output to this run's own transcript
echo "=== FSBlockLookahead: Adder(BlockLookahead), functional ==="

do CompileAll.do                        ;# compile all sources + configurations

vsim -voptargs=+acc work.FSBlockLookahead   ;# start the CONFIGURATION, not TBAdder
do wave.do                              ;# formatted wave window
run -all
wave zoom full

transcript file transcript              ;# redirection off: back to the default transcript
