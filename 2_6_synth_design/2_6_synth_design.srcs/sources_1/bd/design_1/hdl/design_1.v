//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Mon Apr 23 15:26:35 2018
//Host        : taylor-XPS-15-9530 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire [15:0]Net;
  wire btnU_1;
  wire c_counter_binary_0_THRESH0;
  wire [0:0]c_shift_ram_0_Q;
  wire [14:0]c_shift_ram_1_Q;
  wire [14:0]c_shift_ram_2_Q;
  wire [0:0]c_shift_ram_3_Q;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire deltasigma_0_dout;
  wire sys_clock_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [31:0]wavetable_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [14:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [15:0]xlslice_2_Dout;

  assign Net = sw[15:0];
  assign btnU_1 = btnU;
  assign gain[0] = xlconstant_0_dout;
  assign shutdown_l[0] = xlconstant_0_dout;
  assign sout = deltasigma_0_dout;
  assign sys_clock_1 = sys_clock;
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clk_wiz_0_clk_out2),
        .THRESH0(c_counter_binary_0_THRESH0));
  design_1_c_shift_ram_0_0 c_shift_ram_0
       (.CLK(clk_wiz_0_clk_out2),
        .D(xlslice_1_Dout),
        .Q(c_shift_ram_0_Q));
  design_1_c_shift_ram_1_0 c_shift_ram_1
       (.CE(util_vector_logic_0_Res),
        .CLK(clk_wiz_0_clk_out2),
        .D(xlslice_0_Dout),
        .Q(c_shift_ram_1_Q));
  design_1_c_shift_ram_1_1 c_shift_ram_2
       (.CE(c_shift_ram_0_Q),
        .CLK(clk_wiz_0_clk_out2),
        .D(xlslice_0_Dout),
        .Q(c_shift_ram_2_Q));
  design_1_c_shift_ram_0_1 c_shift_ram_3
       (.CLK(clk_wiz_0_clk_out2),
        .D(btnU_1),
        .Q(c_shift_ram_3_Q));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
  design_1_deltasigma_0_0 deltasigma_0
       (.clk(clk_wiz_0_clk_out1),
        .dout(deltasigma_0_dout),
        .sample(xlslice_2_Dout));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(c_shift_ram_0_Q),
        .Res(util_vector_logic_0_Res));
  design_1_wavetable_0_0 wavetable_0
       (.clk(c_counter_binary_0_THRESH0),
        .clr(c_shift_ram_3_Q),
        .den(c_shift_ram_1_Q),
        .dout(wavetable_0_dout),
        .en(xlconstant_0_dout),
        .num(c_shift_ram_2_Q));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(Net),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 xlslice_1
       (.Din(Net),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_0_1 xlslice_2
       (.Din(wavetable_0_dout),
        .Dout(xlslice_2_Dout));
endmodule
