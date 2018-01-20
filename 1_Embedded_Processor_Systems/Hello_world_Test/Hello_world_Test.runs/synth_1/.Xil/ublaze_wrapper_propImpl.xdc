set_property SRC_FILE_INFO {cfile:c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0.xdc rfile:../../../1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:ublaze_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc rfile:../../../1_1_ublaze_system.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W5 [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B18 [get_ports usb_uart_rxd]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A18 [get_ports usb_uart_txd]
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T18 [get_ports reset]