#*********************************************************
# synthesize script for cell: register_8bit
# company: ontwerp_practicum
# designer: hsteman
#*********************************************************
set_db lib_search_path /data/designkit/tsmc-180nm/lib/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/
set_db init_hdl_search_path ../../../VHDL/
set_db library {tcb018gbwp7twc.lib}
set_db use_scan_seqs_for_non_dft false

#include backend/syn/tcl/read_hdl.tcl
read_hdl -vhdl {register_8bit.vhd}
read_hdl -vhdl {register_8bit-behaviour.vhd}
read_hdl -vhdl {register_8bit_behaviour_cfg.vhd}
#endincl

elaborate register_8bit_behaviour_cfg

#include backend/syn/in/register_8bit.sdc
# but use 33 MHz as constraint to be more sure it works.
dc::set_driving_cell -cell INVD0BWP7T [dc::all_inputs]
dc::set_load 1 [dc::all_outputs]
#endincl

synthesize -to_mapped
#set_db syn_generic_effort medium
#syn_generic
#syn_map

ungroup -all -flat
insert_tiehilo_cells
write_hdl -mapped > ../out/register_8bit.v
write_sdf > ../out/register_8bit.sdf
write_sdc > ../out/register_8bit.sdc

report timing
report gates

gui_show


