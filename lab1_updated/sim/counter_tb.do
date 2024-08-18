com -reportprogress 300 -work work C:/Intel/VHDL/lab103/src/counter.vhd
vcom -reportprogress 300 -work work C:/Intel/VHDL/lab103/src/counter_tb.vhd
vsim counter_tb
add wave -group tb counter_tb/*
add wave -group mysync counter_tb/dut/*
run -all