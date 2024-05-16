read_verilog fa_by_ha.v
write_verilog -noattr synth_1.v
synth -top full_adder
abc -liberty sky130_fd_sc_ls__ff_085C_1v95.lib
opt
opt_clean
write_verilog -noattr synth_2.v
stat -top full_adder
stat -liberty sky130_fd_sc_ls__ff_085C_1v95.lib
stat -width
