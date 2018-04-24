# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.cache/wt [current_project]
set_property parent.project_path /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/taylor/ECE_3700/ECE3700/project_3/project_3/ip_repo [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/constrs_1/imports/3700/Basys3_Master-1.xdc
set_property used_in_implementation false [get_files /home/taylor/ECE_3700/3700-supreme-fiesta/1_Embedded_Processor_Systems/1_4_bidirectional_AXI_SevenSegment/1_4_bidirectional_AXI_SevenSegment.srcs/constrs_1/imports/3700/Basys3_Master-1.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top design_1_wrapper -part xc7a35tcpg236-1 -flatten_hierarchy none -directive RuntimeOptimized -fsm_extraction off
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
