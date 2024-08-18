transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Intel/VHDL/lab2/src/shift_register.vhd}
vcom -93 -work work {C:/Intel/VHDL/lab2/src/pulse_generator.vhd}
vcom -93 -work work {C:/Intel/VHDL/lab2/src/light_organ.vhd}
vcom -93 -work work {C:/Intel/VHDL/lab2/src/direction.vhd}

vcom -93 -work work {C:/Intel/VHDL/lab2/par/../src/pulse_generator_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  pulse_generator_tb

add wave *
view structure
view signals
run -all
