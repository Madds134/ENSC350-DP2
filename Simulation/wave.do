# wave.do: wave window for testbenches
# script for both topologies.
onerror {resume}
view wave
delete wave *

add wave -noupdate -height 45 -radix unsigned -label {Measurement Index} TB_Measurement_Index

add wave -noupdate -divider {Stimulus}
add wave -noupdate -height 45 -radix hexadecimal -label A   TB_A
add wave -noupdate -height 45 -radix hexadecimal -label B   TB_B
add wave -noupdate -height 45                    -label Cin TB_Cin

add wave -noupdate -divider {Expected Response}
add wave -noupdate -height 45 -radix hexadecimal -label {S expected}    TB_S_expected
add wave -noupdate -height 45                    -label {Cout expected} TB_Cout_expected
add wave -noupdate -height 45                    -label {Ovfl expected} TB_Ovfl_expected

add wave -noupdate -divider {DUT Signals}
add wave -noupdate -height 45 -radix hexadecimal -label S    TB_S
add wave -noupdate -height 45                    -label Cout TB_Cout
add wave -noupdate -height 45                    -label Ovfl TB_Ovfl

update
