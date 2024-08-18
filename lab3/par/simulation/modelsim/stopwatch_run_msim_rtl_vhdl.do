transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Liel/VHDL/LAB3/src/controller.vhd}

vcom -2008 -work work {C:/Liel/VHDL/LAB3/par/../src/controller_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  controller_tb

add wave *
view structure
view signals
run -all
