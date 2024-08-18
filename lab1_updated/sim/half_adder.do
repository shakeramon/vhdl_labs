vcom C:/Intel/VHDL/LAB1/scr/half_adder.vhd
vsim half_adder
add wave -group group_adder half_adder/*
force a 0 0ns, 1 20ns, 0 40 ns, 1 60ns
force b 0 0ns,1 40ns
run 100ns  