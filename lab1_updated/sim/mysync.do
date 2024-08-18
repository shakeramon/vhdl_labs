vcom -reportprogress 300 -work work C:/Intel/VHDL/lab103/src/mysync.vhd
vcom -reportprogress 300 -work work C:/Intel/VHDL/lab103/src/mysync_tb.vhd
vsim mysync_tb
add wave -group tb mysync_tb/*
add wave -group mysync mysync_tb/dut/*
run -all
