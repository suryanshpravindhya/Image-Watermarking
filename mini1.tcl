read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl watermarking.v
elaborate
read_sdc mini.sdc
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > watermarking_timing.rep
report_area > watermarking_area.rep
report_power > watermarking_pwr.rep
write_hdl>watermarking_net.v
write_sdc > watermarking.sdc
gui_show
