# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri Mar 27 17:39:01 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design watermarking_system

create_clock -name "sys_clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[7]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[6]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[5]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[4]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[3]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[2]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[1]}]
set_load -pin_load 0.05 [get_ports {watermarked_pixel_out[0]}]
set_load -pin_load 0.05 [get_ports valid_out]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports rst]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[7]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[6]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[5]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[4]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[3]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[2]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[1]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {pixel_in[0]}]
set_input_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports valid_in]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[7]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[6]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[5]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[4]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[3]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[2]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[1]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports {watermarked_pixel_out[0]}]
set_output_delay -clock [get_clocks sys_clk] -add_delay 2.0 [get_ports valid_out]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.1 [get_clocks sys_clk]
set_clock_uncertainty -hold 0.1 [get_clocks sys_clk]
## List of unsupported SDC commands ##
set_max_area 0
