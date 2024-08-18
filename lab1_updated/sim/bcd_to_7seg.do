
# Compile the VHDL file
vcom C:/Intel/VHDL/LAB1/scr/bcd_to_7seg.vhd

# Load the simulation
vsim bcd_to_7seg

# Add waves
add wave -group BCD_group  bcd_to_7seg/*
# Apply test vectors to selection signal
force  bcd_in 0 0ns, 2 20ns, 7 40ns, 6 60ns, 5  80ns

# Run the simulation
run 100ns



