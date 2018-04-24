//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Wed Apr 18 13:20:23 2018
//Host        : taylor-XPS-15-9530 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (an,
    dp,
    led,
    reset,
    reset_rtl,
    seg,
    sw,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]an;
  output dp;
  output [15:0]led;
  input reset;
  input reset_rtl;
  output [6:0]seg;
  input [15:0]sw;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]an;
  wire dp;
  wire [15:0]led;
  wire reset;
  wire reset_rtl;
  wire [6:0]seg;
  wire [15:0]sw;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.an(an),
        .dp(dp),
        .led(led),
        .reset(reset),
        .reset_rtl(reset_rtl),
        .seg(seg),
        .sw(sw),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
