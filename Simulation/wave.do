# wave.do: wave window for TBAdder (shared by every FS/TS script).
# Signal names follow the course convention: TB<port> = wired to the DUT,
# TBtrue<port> = expected value from the test vector file.
onerror {resume}
view wave
delete wave *

add wave -noupdate -height 45 -radix unsigned -label {Measurement Index} TBMeasurementIndex

add wave -noupdate -divider {Stimulus}
add wave -noupdate -height 45 -radix hexadecimal -label A   TBA
add wave -noupdate -height 45 -radix hexadecimal -label B   TBB
add wave -noupdate -height 45                    -label Cin TBCin

add wave -noupdate -divider {Expected Response}
add wave -noupdate -height 45 -radix hexadecimal -label {S expected}    TBtrueS
add wave -noupdate -height 45                    -label {Cout expected} TBtrueCout
add wave -noupdate -height 45                    -label {Ovfl expected} TBtrueOvfl

add wave -noupdate -divider {DUT Signals}
add wave -noupdate -height 45 -radix hexadecimal -label S    TBS
add wave -noupdate -height 45                    -label Cout TBCout
add wave -noupdate -height 45                    -label Ovfl TBOvfl

add wave -noupdate -divider {Measured Delays}
add wave -noupdate -height 45 -label {Delay S}      TBDelayS
add wave -noupdate -height 45 -label {Delay Status} TBDelayStatus

update
