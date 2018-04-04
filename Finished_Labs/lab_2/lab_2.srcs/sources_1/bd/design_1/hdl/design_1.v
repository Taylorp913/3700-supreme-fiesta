//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Fri Feb 09 17:44:26 2018
//Host        : ENG30741 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,da_board_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire [3:0]SevenSegmentDriver_0_an;
  wire SevenSegmentDriver_0_dp;
  wire [6:0]SevenSegmentDriver_0_seg;
  wire btnC_1;
  wire btnD_1;
  wire btnL_1;
  wire btnU_1;
  wire [15:0]c_addsub_0_S;
  wire [0:0]c_counter_binary_0_Q;
  wire [1:0]c_counter_binary_1_Q;
  wire [0:0]c_shift_ram_0_Q;
  wire [0:0]c_shift_ram_1_Q;
  wire [0:0]c_shift_ram_2_Q;
  wire [0:0]c_shift_ram_3_Q;
  wire clk_wiz_0_clk_out1;
  wire [15:0]sw_1;
  wire sys_clock_1;
  wire [2:0]xlconcat_0_dout;

  assign an[3:0] = SevenSegmentDriver_0_an;
  assign btnC_1 = btnC;
  assign btnD_1 = btnD;
  assign btnL_1 = btnL;
  assign btnU_1 = btnU;
  assign dp = SevenSegmentDriver_0_dp;
  assign led[2:0] = xlconcat_0_dout;
  assign seg[6:0] = SevenSegmentDriver_0_seg;
  assign sw_1 = sw[15:0];
  assign sys_clock_1 = sys_clock;
  design_1_SevenSegmentDriver_0_0 SevenSegmentDriver_0
       (.an(SevenSegmentDriver_0_an),
        .bcd(c_counter_binary_0_Q),
        .clk(clk_wiz_0_clk_out1),
        .dec(c_counter_binary_1_Q),
        .din(c_addsub_0_S),
        .dp(SevenSegmentDriver_0_dp),
        .seg(SevenSegmentDriver_0_seg));
  design_1_c_addsub_0_0 c_addsub_0
       (.A(sw_1),
        .B(c_addsub_0_S),
        .CLK(c_shift_ram_2_Q),
        .S(c_addsub_0_S),
        .SCLR(c_shift_ram_3_Q));
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(c_shift_ram_0_Q),
        .Q(c_counter_binary_0_Q));
  design_1_c_counter_binary_1_0 c_counter_binary_1
       (.CLK(c_shift_ram_1_Q),
        .Q(c_counter_binary_1_Q));
  design_1_c_shift_ram_0_0 c_shift_ram_0
       (.CLK(clk_wiz_0_clk_out1),
        .D(btnU_1),
        .Q(c_shift_ram_0_Q));
  design_1_c_shift_ram_1_0 c_shift_ram_1
       (.CLK(clk_wiz_0_clk_out1),
        .D(btnD_1),
        .Q(c_shift_ram_1_Q));
  design_1_c_shift_ram_2_0 c_shift_ram_2
       (.CLK(clk_wiz_0_clk_out1),
        .D(btnC_1),
        .Q(c_shift_ram_2_Q));
  design_1_c_shift_ram_3_0 c_shift_ram_3
       (.CLK(clk_wiz_0_clk_out1),
        .D(btnL_1),
        .Q(c_shift_ram_3_Q));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(c_counter_binary_0_Q),
        .In1(c_counter_binary_1_Q),
        .dout(xlconcat_0_dout));
endmodule
