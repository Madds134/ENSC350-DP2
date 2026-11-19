# CompileAll.do - compile every DP2 source in dependency order (shared by all FS scripts).
# Entity first, then each architecture with its internal entities, then the
# testbench, then the configurations LAST (they name every architecture).
# Adding an architecture: add its line(s) above TBAdder.vhd.
if {![file exists work]} { vlib work }
vcom -2008 -work work ../SourceCode/Adder.vhd
vcom -2008 -work work ../SourceCode/AdderBaseline.vhd
vcom -2008 -work work ../SourceCode/AdderFastRipple.vhd
vcom -2008 -work work ../SourceCode/ConditionalSumCarry.vhd
vcom -2008 -work work ../SourceCode/AdderConditionalSum.vhd
vcom -2008 -work work ../SourceCode/BLAN.vhd
vcom -2008 -work work ../SourceCode/AdderBlockLookahead.vhd
vcom -2008 -work work TBAdder.vhd
vcom -2008 -work work ../SourceCode/TBAdderConfigurations.vhd
