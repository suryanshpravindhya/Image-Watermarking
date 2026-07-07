# 1. Define the Clock (Matching the 10ns PERIOD in your testbench)
# [cite: 19, 23]
create_clock -name sys_clk -period 10.0 [get_ports clk]

# 2. Set Clock Uncertainty (Modeling jitter and skew)
set_clock_uncertainty 0.1 [get_clocks sys_clk]

# 3. Define Input Delays 
# (Assuming external logic takes ~20% of the clock cycle)
set_input_delay -clock sys_clk 2.0 [get_ports {rst pixel_in valid_in}]

# 4. Define Output Delays
# (Assuming downstream logic needs ~20% of the cycle for setup)
set_output_delay -clock sys_clk 2.0 [get_ports {watermarked_pixel_out valid_out}]

# 5. Set Load Constraints
# (Modelling the capacitance of the output pins)
set_load 0.05 [get_ports {watermarked_pixel_out valid_out}]

# 6. Area and Optimization (Optional for netlist generation)
set_max_area 0

# Force the tool to not optimize away "unused" signals during debugging
set_compile_directive -flatten none
set_keep [get_cells -hierarchical *]

# Ensure the design is linked properly
link
check_design
