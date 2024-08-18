transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/src/sync_diff.vhd}
vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/src/pulse_generator.vhd}
vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/src/counter.vhd}
vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/src/bcd_to_7seg.vhd}
vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/src/controller.vhd}
vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/src/stopwatch.vhd}

vcom -2008 -work work {C:/Users/oday/vhdl.oday/LAB3/par/../src/stopwatch_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  stopwatch_tb

add wave -group pulse_generator STOPWATCH_TB/dut/mid2/*
add wave -group counter STOPWATCH_TB/dut/mid3/*
add wave -group controller STOPWATCH_TB/dut/mid1/*
add wave -group sync_diff STOPWATCH_TB/dut/in1/*
add wave -group sync_diff STOPWATCH_TB/dut/in2/*
add wave -group sync_diff STOPWATCH_TB/dut/in3/*
add wave -group bcd_to_7seg STOPWATCH_TB/dut/first_out/*
add wave -group bcd_to_7seg STOPWATCH_TB/dut/sec_out/*
add wave -group bcd_to_7seg STOPWATCH_TB/dut/third_out/*
add wave -group bcd_to_7seg STOPWATCH_TB/dut/fourth_out/*
view structure
view signals
run -all
