# GenDirectedVectors.tcl
# Rebuilds the directed test vectors of Adder00.tvs for any adder width N (bonus N sweep).
# Each vector is written as a RULE (e.g. "full propagate, Cin = 0") rather than a fixed hex value,
# so the worst cases stay the same cases at every width. With N = 64 it reproduces Adder00.tvs exactly.
# Usage: quartus_sh -t Simulation/TestVectors/GenDirectedVectors.tcl <N>   -> Simulation/Adder00_N<N>.tvs
# Format per line (spec): A B Cin S Cout Ovfl, A/B/S in hex (N/4 digits)

if {[info exists quartus(args)]} { set Args $quartus(args) } else { set Args $argv }
set N [lindex $Args 0]
if {$N eq "" || $N < 8 || ($N & ($N - 1)) != 0} { error "N must be a power of 2, at least 8" }

set Mask   [expr {(1 << $N) - 1}]    ;# all N bits set
set MinNeg [expr {1 << ($N - 1)}]    ;# 100...0, the most negative signed value
set MaxPos [expr {$MinNeg - 1}]      ;# 011...1, the most positive signed value
set Digits [expr {$N / 4}]           ;# hex digits per operand

# One vector line: expected values computed with unbounded integers.
# Ovfl = both operands have the same sign bit and the sum's sign bit differs.
# Fail = 1 writes a deliberately wrong expected S (the testbench self-check)
proc Vector {A B Cin {Fail 0}} {
    global N Mask Digits
    set Total [expr {$A + $B + $Cin}]
    set S     [expr {$Total & $Mask}]
    set Cout  [expr {$Total >> $N}]
    set SignA [expr {($A >> ($N - 1)) & 1}]
    set SignB [expr {($B >> ($N - 1)) & 1}]
    set SignS [expr {($S >> ($N - 1)) & 1}]
    set Ovfl  [expr {$SignA == $SignB && $SignS != $SignA}]
    if {$Fail} { set S [expr {($S + 1) & $Mask}] }
    return [format "%0${Digits}llX %0${Digits}llX %d %0${Digits}llX %d %d" $A $B $Cin $S $Cout $Ovfl]
}

set Lines {}
# 1-7: corner cases (zero, all-propagate with Cin 0 and 1, signed overflow both ways, generate+propagate, all ones)
lappend Lines [Vector 0 0 0]                ;# 1  all zero: every bit kills (the delay floor)
lappend Lines [Vector $Mask 0 0]            ;# 2  full propagate, Cin = 0 (worst case from X)
lappend Lines [Vector $Mask 0 1]            ;# 3  full propagate, Cin = 1 (carry through every bit)
lappend Lines [Vector $MaxPos 0 1]          ;# 4  propagate to the sign bit: positive overflow
lappend Lines [Vector $MinNeg $MinNeg 0]    ;# 5  two most-negative values: negative overflow + Cout
lappend Lines [Vector 1 $Mask 0]            ;# 6  generate at bit 0, propagate to the top
lappend Lines [Vector $Mask $Mask 0]        ;# 7  all ones + all ones
# 8-…: carry runs that stop after m bits, m = 2, 4, 8 … N (A = 2^(m/2-1), B = 2^m - A)
for {set M 2} {$M <= $N} {set M [expr {$M * 2}]} {
    set A [expr {1 << ($M / 2 - 1)}]
    set B [expr {((1 << $M) - $A) & $Mask}]
    lappend Lines [Vector $A $B 0]
}
# …: Cin-driven propagate runs of 1, N/4 and N/2 bits (A = 2^r - 1, Cin = 1)
foreach R [list 1 [expr {$N / 4}] [expr {$N / 2}]] {
    lappend Lines [Vector [expr {(1 << $R) - 1}] 0 1]
}
# last: the deliberate FAIL (1 + 1 with expected S = 3) proving the checker reports errors
lappend Lines [Vector 1 1 0 1]

set Here [file dirname [file normalize [info script]]]
set OutFile [file join $Here .. Adder00_N$N.tvs]
set Out [open $OutFile w]
fconfigure $Out -translation lf
puts -nonewline $Out "[join $Lines \n]\n"
close $Out
puts "GenDirectedVectors: wrote [llength $Lines] vectors to [file normalize $OutFile]"
