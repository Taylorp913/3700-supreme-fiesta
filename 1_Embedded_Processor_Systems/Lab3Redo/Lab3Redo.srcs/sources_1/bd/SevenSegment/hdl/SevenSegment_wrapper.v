//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Thu Jan 25 21:53:34 2018
//Host        : tsp-arch-ux305c running 64-bit unknown
//Command     : generate_target SevenSegment_wrapper.bd
//Design      : SevenSegment_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SevenSegment_wrapper
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

  SevenSegment SevenSegment_i
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
