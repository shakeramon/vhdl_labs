transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {light_organ.vho}

vcom -93 -work work {C:/Intel/VHDL/lab2/par/../src/light_organ_tb.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  light_organ_tb

add wave *
view structure
view signals
run -all
