//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Mon Apr 23 15:26:35 2018
//Host        : taylor-XPS-15-9530 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btnU,
    gain,
    shutdown_l,
    sout,
    sw,
    sys_clock);
  input btnU;
  output [0:0]gain;
  output [0:0]shutdown_l;
  output sout;
  input [15:0]sw;
  input sys_clock;

  wire btnU;
  wire [0:0]gain;
  wire [0:0]shutdown_l;
  wire sout;
  wire [15:0]sw;
  wire sys_clock;

  design_1 design_1_i
       (.btnU(btnU),
        .gain(gain),
        .shutdown_l(shutdown_l),
        .sout(sout),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
