# LINESCANNER PIXEL_CLOCK (INPUT)
create_clock -period 10.000 -name linescanner0_pixel_clock -waveform {0.000 5.000} [get_ports LINESCANNER0_PIXEL_CLOCK]
create_clock -period 10.000 -name linescanner1_pixel_clock -waveform {0.000 5.000} [get_ports LINESCANNER1_PIXEL_CLOCK]
# FABRIC CLOCK
create_clock -period 5.000 -name pl_fabric_clock -waveform {0.000 2.500} [get_pins image_processing_2d_design_i/processing_system7_0/FCLK_CLK0]
set_clock_groups -logically_exclusive -group linescanner0_pixel_clock -group linescanner1_pixel_clock
set_clock_groups -logically_exclusive -group pl_fabric_clock -group linescanner0_pixel_clock
set_clock_groups -logically_exclusive -group pl_fabric_clock -group linescanner1_pixel_clock
#CLOCK DIVIDER FOR LINESCANNERS
create_generated_clock -name clock_divider_0_clock -source [get_pins image_processing_2d_design_i/clock_divider_0/input_clock] -divide_by 2 [get_pins image_processing_2d_design_i/clock_divider_0/output_clock]
create_generated_clock -name clock_divider_1_clock -source [get_pins image_processing_2d_design_i/clock_divider_1/input_clock] -divide_by 5 [get_pins image_processing_2d_design_i/clock_divider_1/output_clock]
# CAN'T DESCRIBE RELATIONS
set_clock_groups -logically_exclusive -group pl_fabric_clock -group clock_divider_0_clock
set_clock_groups -logically_exclusive -group pl_fabric_clock -group clock_divider_1_clock
# CLOCK DIVEDERS ARE INDIPENDENT FROM EACH OTHER
set_clock_groups -logically_exclusive -group clock_divider_0_clock -group clock_divider_1_clock

# PINS DESCRIPTION
set_property PACKAGE_PIN K18 [get_ports {LINESCANNER0_DATA[6]}]
set_property PACKAGE_PIN K15 [get_ports {LINESCANNER0_DATA[3]}]
set_property PACKAGE_PIN R20 [get_ports {LINESCANNER0_DATA[0]}]
set_property PACKAGE_PIN F16 [get_ports {LINESCANNER1_DATA[5]}]
set_property PACKAGE_PIN B19 [get_ports LINESCANNER1_MAIN_CLOCK]
set_property PACKAGE_PIN L18 [get_ports LINESCANNER0_PIXEL_CLOCK]
set_property PACKAGE_PIN A16 [get_ports LINESCANNER1_RST_CDS]
set_property PACKAGE_PIN R15 [get_ports LINESCANNER0_RST_CVC]
set_property PACKAGE_PIN H15 [get_ports {LINESCANNER0_DATA[5]}]
set_property PACKAGE_PIN M15 [get_ports {LINESCANNER0_N_RESET[0]}]
set_property PACKAGE_PIN P16 [get_ports LINESCANNER0_LOAD_PULSE]
set_property PACKAGE_PIN H19 [get_ports {LINESCANNER1_DATA[7]}]
set_property PACKAGE_PIN F18 [get_ports LINESCANNER1_RST_CVC]
set_property PACKAGE_PIN G20 [get_ports {LINESCANNER1_DATA[4]}]
set_property PACKAGE_PIN D22 [get_ports {LINESCANNER1_DATA[1]}]
set_property PACKAGE_PIN F19 [get_ports {LINESCANNER1_DATA[2]}]
set_property PACKAGE_PIN J18 [get_ports LINESCANNER0_LVAL]
set_property PACKAGE_PIN J20 [get_ports LINESCANNER0_RST_CDS]
set_property PACKAGE_PIN H22 [get_ports {LINESCANNER1_DATA[0]}]
set_property PACKAGE_PIN H17 [get_ports {LINESCANNER1_DATA[3]}]
set_property PACKAGE_PIN D20 [get_ports LINESCANNER1_PIXEL_CLOCK]
set_property PACKAGE_PIN E19 [get_ports {LINESCANNER1_DATA[6]}]
set_property PACKAGE_PIN K19 [get_ports LINESCANNER0_END_ADC]
set_property PACKAGE_PIN J16 [get_ports {LINESCANNER0_DATA[1]}]
set_property PACKAGE_PIN B21 [get_ports LINESCANNER1_LVAL]
set_property PACKAGE_PIN R16 [get_ports LINESCANNER0_SAMPLE]
set_property PACKAGE_PIN L16 [get_ports {LINESCANNER0_DATA[4]}]
set_property PACKAGE_PIN E16 [get_ports LINESCANNER1_LOAD_PULSE]
set_property PACKAGE_PIN J15 [get_ports {LINESCANNER0_DATA[7]}]
set_property PACKAGE_PIN E21 [get_ports {LINESCANNER1_N_RESET[0]}]
set_property PACKAGE_PIN E18 [get_ports LINESCANNER1_SAMPLE]

set_property PACKAGE_PIN M21 [get_ports {LINESCANNER0_DATA[2]}]
set_property PACKAGE_PIN M19 [get_ports LINESCANNER0_MAIN_CLOCK]

set_property PACKAGE_PIN N19 [get_ports LINESCANNER_CLK]
set_property PACKAGE_PIN G19 [get_ports {LINESCANNER_CS[1]}]
set_property PACKAGE_PIN P17 [get_ports {LINESCANNER_CS[0]}]
set_property PACKAGE_PIN N17 [get_ports LINESCANNER_MISO]

set_property PACKAGE_PIN C20 [get_ports LINESCANNER1_END_ADC]
set_property PACKAGE_PIN L17 [get_ports LINESCANNER_MOSI]

set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_MAIN_CLOCK]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER_CS[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_PIXEL_CLOCK]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER_MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_RST_CDS]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_RST_CVC]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_END_ADC]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_N_RESET[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_LOAD_PULSE]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_RST_CVC]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_LVAL]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER_CS[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_RST_CDS]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_MAIN_CLOCK]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_N_RESET[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_LOAD_PULSE]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_SAMPLE]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_LVAL]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER0_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER_MISO]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER0_END_ADC]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_PIXEL_CLOCK]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LINESCANNER1_DATA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports LINESCANNER1_SAMPLE]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 4 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list image_processing_2d_design_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {image_processing_2d_design_i/proc_sys_reset_0/peripheral_aresetn[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list image_processing_2d_design_i/frequency_analyzer_manager_0_irq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list image_processing_2d_design_i/frequency_analyzer_manager_1_irq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list image_processing_2d_design_i/frequency_analyzer_synch_0_start_analyzer_0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list image_processing_2d_design_i/frequency_analyzer_synch_0_start_analyzer_1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list image_processing_2d_design_i/frequency_analyzer_synch_0_stop_analyzer_0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list image_processing_2d_design_i/frequency_analyzer_synch_0_stop_analyzer_1]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
