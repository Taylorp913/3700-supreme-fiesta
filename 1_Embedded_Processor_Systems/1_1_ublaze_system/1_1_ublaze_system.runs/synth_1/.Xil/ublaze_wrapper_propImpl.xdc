set_property SRC_FILE_INFO {cfile:c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0.xdc rfile:../../../1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_clk_wiz_1_0/ublaze_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:ublaze_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_gpio_0_0/ublaze_axi_gpio_0_0_board.xdc rfile:../../../1_1_ublaze_system.srcs/sources_1/bd/ublaze/ip/ublaze_axi_gpio_0_0/ublaze_axi_gpio_0_0_board.xdc id:2 order:EARLY used_in_board:yes scoped_inst:ublaze_i/axi_gpio_0/U0 prop_thru_buffer:yes} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/labuser/Desktop/3700/1_Embedded_Processor_Systems/1_1_ublaze_system/1_1_ublaze_system.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc rfile:../../../1_1_ublaze_system.srcs/constrs_1/imports/ECE_3700/Basys3_Master-1.xdc id:3} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_0} [get_ports gpio_io_t[0]]
set_property src_info {type:SCOPED_XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_1} [get_ports gpio_io_t[1]]
set_property src_info {type:SCOPED_XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_2} [get_ports gpio_io_t[2]]
set_property src_info {type:SCOPED_XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_3} [get_ports gpio_io_t[3]]
set_property src_info {type:SCOPED_XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_4} [get_ports gpio_io_t[4]]
set_property src_info {type:SCOPED_XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_5} [get_ports gpio_io_t[5]]
set_property src_info {type:SCOPED_XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_6} [get_ports gpio_io_t[6]]
set_property src_info {type:SCOPED_XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_7} [get_ports gpio_io_t[7]]
set_property src_info {type:SCOPED_XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_8} [get_ports gpio_io_t[8]]
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_9} [get_ports gpio_io_t[9]]
set_property src_info {type:SCOPED_XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_10} [get_ports gpio_io_t[10]]
set_property src_info {type:SCOPED_XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_11} [get_ports gpio_io_t[11]]
set_property src_info {type:SCOPED_XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_12} [get_ports gpio_io_t[12]]
set_property src_info {type:SCOPED_XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_13} [get_ports gpio_io_t[13]]
set_property src_info {type:SCOPED_XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_14} [get_ports gpio_io_t[14]]
set_property src_info {type:SCOPED_XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {led_16bits_tri_o_15} [get_ports gpio_io_t[15]]
set_property src_info {type:XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W5 [get_ports sys_clk]
set_property src_info {type:XDC file:3 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property src_info {type:XDC file:3 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clk]
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B18 [get_ports usb_uart_rxd]
set_property src_info {type:XDC file:3 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A18 [get_ports usb_uart_txd]
set_property src_info {type:XDC file:3 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T18 [get_ports reset]
set_property src_info {type:XDC file:3 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_poperty PACKAGE_PIN V17 [get_ports {sw[0]}]
set_property src_info {type:XDC file:3 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]
set_property src_info {type:XDC file:3 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]
set_property src_info {type:XDC file:3 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]
set_property src_info {type:XDC file:3 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W15 [get_ports {sw[4]}]
set_property src_info {type:XDC file:3 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V15 [get_ports {sw[5]}]
set_property src_info {type:XDC file:3 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W14 [get_ports {sw[6]}]
set_property src_info {type:XDC file:3 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W13 [get_ports {sw[7]}]
set_property src_info {type:XDC file:3 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V2 [get_ports {sw[8]}]
set_property src_info {type:XDC file:3 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T3 [get_ports {sw[9]}]
set_property src_info {type:XDC file:3 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T2 [get_ports {sw[10]}]
set_property src_info {type:XDC file:3 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R3 [get_ports {sw[11]}]
set_property src_info {type:XDC file:3 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W2 [get_ports {sw[12]}]
set_property src_info {type:XDC file:3 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U1 [get_ports {sw[13]}]
set_property src_info {type:XDC file:3 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T1 [get_ports {sw[14]}]
set_property src_info {type:XDC file:3 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R2 [get_ports {sw[15]}]
set_property src_info {type:XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U16 [get_ports {led[0]}]
set_property src_info {type:XDC file:3 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]
set_property src_info {type:XDC file:3 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]
set_property src_info {type:XDC file:3 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V19 [get_ports {led[3]}]
set_property src_info {type:XDC file:3 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W18 [get_ports {led[4]}]
set_property src_info {type:XDC file:3 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U15 [get_ports {led[5]}]
set_property src_info {type:XDC file:3 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U14 [get_ports {led[6]}]
set_property src_info {type:XDC file:3 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V14 [get_ports {led[7]}]
set_property src_info {type:XDC file:3 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V13 [get_ports {led[8]}]
set_property src_info {type:XDC file:3 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V3 [get_ports {led[9]}]
set_property src_info {type:XDC file:3 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W3 [get_ports {led[10]}]
set_property src_info {type:XDC file:3 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U3 [get_ports {led[11]}]
set_property src_info {type:XDC file:3 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P3 [get_ports {led[12]}]
set_property src_info {type:XDC file:3 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N3 [get_ports {led[13]}]
set_property src_info {type:XDC file:3 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P1 [get_ports {led[14]}]
set_property src_info {type:XDC file:3 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L1 [get_ports {led[15]}]
