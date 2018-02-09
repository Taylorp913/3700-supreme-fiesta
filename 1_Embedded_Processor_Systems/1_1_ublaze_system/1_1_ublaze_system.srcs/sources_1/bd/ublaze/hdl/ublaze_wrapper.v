//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Mon Jan 29 15:15:38 2018
//Host        : DESKTOP-RQADDVB running 64-bit major release  (build 9200)
//Command     : generate_target ublaze_wrapper.bd
//Design      : ublaze_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ublaze_wrapper
   (led,
    reset,
    sw,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [15:0]led;
  input reset;
  input [15:0]sw;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]led;
  wire reset;
  wire [15:0]sw;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  ublaze ublaze_i
       (.led(led),
        .reset(reset),
        .sw(sw),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
