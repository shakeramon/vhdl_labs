vcom C:/Intel/VHDL/LAB1/scr/and2_gate.vhd
vsim and2_gate
add wave -group my_first_group and2_gate/*
force a 0 0ns, 1 20ns, 0 40 ns, 1 60ns
force b 0 0ns,1 40ns
run 100ns  