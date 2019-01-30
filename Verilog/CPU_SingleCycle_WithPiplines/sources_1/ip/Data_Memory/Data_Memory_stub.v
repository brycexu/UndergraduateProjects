// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Jul 07 17:17:49 2018
// Host        : 004 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Administrator/Desktop/Single_pipline/Single_pipline.srcs/sources_1/ip/Data_Memory/Data_Memory_stub.v
// Design      : Data_Memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0,Vivado 2015.2" *)
module Data_Memory(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],d[31:0],clk,we,spo[31:0]" */;
  input [11:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;
endmodule
