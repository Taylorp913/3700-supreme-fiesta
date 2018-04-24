// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Wed Apr 18 15:45:47 2018
// Host        : taylor-XPS-15-9530 running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/taylor/ECE_3700/3700-supreme-fiesta/2_1_PWM_test/2_1_PWM_test.srcs/sources_1/ip/pwm_0/pwm_0_stub.v
// Design      : pwm_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pwm,Vivado 2015.4" *)
module pwm_0(clk, din, sout)
/* synthesis syn_black_box black_box_pad_pin="clk,din[7:0],sout" */;
  input clk;
  input [7:0]din;
  output sout;
endmodule
