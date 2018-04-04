//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Wed Feb 21 16:59:25 2018
//Host        : ENG30725 running 64-bit major release  (build 9200)
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
    seg,
    sw,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]an;
  output dp;
  output [15:0]led;
  input reset;
  output [6:0]seg;
  input [15:0]sw;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]an;
  wire dp;
  wire [15:0]led;
  wire reset;
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
        .seg(seg),
        .sw(sw),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
