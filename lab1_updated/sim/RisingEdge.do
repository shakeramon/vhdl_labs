vcom -reportprogress 300 -work work C:/Intel/VHDL/lab103/src/RisingEdge.vhd
vcom -reportprogress 300 -work work C:/Intel/VHDL/lab103/src/RisingEdge_tb.vhd
vsim RisingEdge_tb
add wave -group tb RisingEdge_tb/*
add wave -group risingedge RisingEdge_tb/dut/*
run -all