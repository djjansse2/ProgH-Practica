// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Mar 14 16:25:32 2019
// Host        : LAPTOP-HRAQ4RRP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/FPGA/ProgH-Practicum/PROGH2/Eindopdracht/EindOpdracht/EindOpdracht.srcs/sources_1/ip/Pixel_Clock/Pixel_Clock_stub.v
// Design      : Pixel_Clock
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Pixel_Clock(clk_out1, clk_out2, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input clk_in1;
endmodule
