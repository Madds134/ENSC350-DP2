# Adder.sdc
# Timing constraints shared by every design candidate since all purely combinational

# Require every input to output settle within 1ns
set_max_delay -from [all_inputs] -to [all_outputs] 1.000