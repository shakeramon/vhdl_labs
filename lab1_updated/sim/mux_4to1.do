
# Compile the VHDL file
vcom C:/Intel/VHDL/LAB1/scr/mux_4to1.vhd

# Load the simulation
vsim mux_4to1

# Add waves
add wave -group mux_group  mux_4to1/*

# Apply test vectors to inputs
force  input0 00000000 0ns
force  input1 11011111 0ns 
force input2 11111111 0ns
force  input3 01000000 0ns

# Apply test vectors to selection signal
force  sel 00 0ns, 01 20ns, 10 40ns, 11 60ns, 1L  80ns

# Run the simulation
run 100ns



