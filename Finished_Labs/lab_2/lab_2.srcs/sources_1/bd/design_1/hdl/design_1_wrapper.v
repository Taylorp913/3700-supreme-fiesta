//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Fri Feb 09 17:44:26 2018
//Host        : ENG30741 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (an,
    btnC,
    btnD,
    btnL,
    btnU,
    dp,
    led,
    seg,
    sw,
    sys_clock);
  output [3:0]an;
  input btnC;
  input btnD;
  input btnL;
  input btnU;
  output dp;
  output [2:0]led;
  output [6:0]seg;
  input [15:0]sw;
  input sys_clock;

  wire [3:0]an;
  wire btnC;
  wire btnD;
  wire btnL;
  wire btnU;
  wire dp;
  wire [2:0]led;
  wire [6:0]seg;
  wire [15:0]sw;
  wire sys_clock;

  design_1 design_1_i
       (.an(an),
        .btnC(btnC),
        .btnD(btnD),
        .btnL(btnL),
        .btnU(btnU),
        .dp(dp),
        .led(led),
        .seg(seg),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
