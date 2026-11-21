# Candidates.tcl
# The design candidates, shared by SynthAll.tcl (compiles them) and CollectResults.tcl (reads their reports)
# A candidate is a {topology, FPGA} pair, named <Topology>_<FPGA> (plus _N<width> when N is not 64)

# Adder width: the generic N of entity Adder (64 for DP2; other powers of 2 for the bonus sweep)
set N 64

# Target FPGAs: revision suffix, family, device, core supply voltage
set FPGAs {
    {CIV    "Cyclone IV E" EP4CE115F29C7  1.2V}
    {CIVE30 "Cyclone IV E" EP4CE30F23C6   1.2V}
    {AII    "Arria II GX"  EP2AGX45DF29C6 0.9V}
}

# Topologies: name, and the source files it needs besides Adder.vhd
set Topologies {
    {Ripple         {AdderBaseline.vhd}}
    {FastRipple     {AdderFastRipple.vhd}}
    {ConditionalSum {ConditionalSumCarry.vhd AdderConditionalSum.vhd}}
    {BlockLookahead {LookaheadCarryNet.vhd AdderBlockLookahead.vhd}}
    {BrentKung      {BLAN.vhd AdderBrentKung.vhd}}
    {KoggeStone     {BLAN.vhd BLANKoggeStone.vhd AdderKoggeStone.vhd}}
    {CarrySkip      {AdderCarrySkip.vhd}}
}

# Build the candidate list: each entry is {Revision Family Device Voltage Files}
set Candidates {}
foreach T $Topologies {
    lassign $T Topo Files
    foreach F $FPGAs {
        lassign $F Suffix Family Device Voltage
        set Rev ${Topo}_${Suffix}
        if {$N != 64} { append Rev _N$N }
        lappend Candidates [list $Rev $Family $Device $Voltage $Files]
    }
}
