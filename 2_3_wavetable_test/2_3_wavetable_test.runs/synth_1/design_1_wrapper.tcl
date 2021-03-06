# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.cache/wt [current_project]
set_property parent.project_path /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_repo_paths /home/taylor/ECE_3700/3700-supreme-fiesta [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_0_0/design_1_c_shift_ram_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_1_0/design_1_c_shift_ram_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_1_1/design_1_c_shift_ram_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_wavetable_0_0/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_0_1/design_1_c_shift_ram_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc
set_property used_in_implementation false [get_files /home/taylor/ECE_3700/3700-supreme-fiesta/2_3_wavetable_test/2_3_wavetable_test.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top design_1_wrapper -part xc7a35tcpg236-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
