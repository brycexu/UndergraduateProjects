// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Jul 07 16:39:40 2018
// Host        : 004 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/Single_pipline/Single_pipline.srcs/sources_1/ip/Instruction_Memory/Instruction_Memory_funcsim.v
// Design      : Instruction_Memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Instruction_Memory,dist_mem_gen_v8_0,{}" *) (* core_generation_info = "Instruction_Memory,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=14,C_DEFAULT_DATA=0,C_DEPTH=16384,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=Instruction_Memory.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dist_mem_gen_v8_0,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module Instruction_Memory
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* DONT_TOUCH *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "Instruction_Memory.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  Instruction_Memory_dist_mem_gen_v8_0 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16384" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "Instruction_Memory.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0" *) 
module Instruction_Memory_dist_mem_gen_v8_0
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]\^spo ;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_38_n_0 ;
  wire \spo[0]_INST_0_i_39_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_40_n_0 ;
  wire \spo[0]_INST_0_i_41_n_0 ;
  wire \spo[0]_INST_0_i_42_n_0 ;
  wire \spo[0]_INST_0_i_43_n_0 ;
  wire \spo[0]_INST_0_i_44_n_0 ;
  wire \spo[0]_INST_0_i_45_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_12_n_0 ;
  wire \spo[10]_INST_0_i_13_n_0 ;
  wire \spo[10]_INST_0_i_14_n_0 ;
  wire \spo[10]_INST_0_i_15_n_0 ;
  wire \spo[10]_INST_0_i_16_n_0 ;
  wire \spo[10]_INST_0_i_17_n_0 ;
  wire \spo[10]_INST_0_i_18_n_0 ;
  wire \spo[10]_INST_0_i_19_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_20_n_0 ;
  wire \spo[10]_INST_0_i_21_n_0 ;
  wire \spo[10]_INST_0_i_22_n_0 ;
  wire \spo[10]_INST_0_i_23_n_0 ;
  wire \spo[10]_INST_0_i_24_n_0 ;
  wire \spo[10]_INST_0_i_25_n_0 ;
  wire \spo[10]_INST_0_i_26_n_0 ;
  wire \spo[10]_INST_0_i_27_n_0 ;
  wire \spo[10]_INST_0_i_28_n_0 ;
  wire \spo[10]_INST_0_i_29_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_30_n_0 ;
  wire \spo[10]_INST_0_i_31_n_0 ;
  wire \spo[10]_INST_0_i_32_n_0 ;
  wire \spo[10]_INST_0_i_33_n_0 ;
  wire \spo[10]_INST_0_i_34_n_0 ;
  wire \spo[10]_INST_0_i_35_n_0 ;
  wire \spo[10]_INST_0_i_36_n_0 ;
  wire \spo[10]_INST_0_i_37_n_0 ;
  wire \spo[10]_INST_0_i_38_n_0 ;
  wire \spo[10]_INST_0_i_39_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_40_n_0 ;
  wire \spo[10]_INST_0_i_41_n_0 ;
  wire \spo[10]_INST_0_i_42_n_0 ;
  wire \spo[10]_INST_0_i_43_n_0 ;
  wire \spo[10]_INST_0_i_44_n_0 ;
  wire \spo[10]_INST_0_i_45_n_0 ;
  wire \spo[10]_INST_0_i_46_n_0 ;
  wire \spo[10]_INST_0_i_47_n_0 ;
  wire \spo[10]_INST_0_i_48_n_0 ;
  wire \spo[10]_INST_0_i_49_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_50_n_0 ;
  wire \spo[10]_INST_0_i_51_n_0 ;
  wire \spo[10]_INST_0_i_52_n_0 ;
  wire \spo[10]_INST_0_i_53_n_0 ;
  wire \spo[10]_INST_0_i_54_n_0 ;
  wire \spo[10]_INST_0_i_55_n_0 ;
  wire \spo[10]_INST_0_i_56_n_0 ;
  wire \spo[10]_INST_0_i_57_n_0 ;
  wire \spo[10]_INST_0_i_58_n_0 ;
  wire \spo[10]_INST_0_i_59_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_60_n_0 ;
  wire \spo[10]_INST_0_i_61_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_13_n_0 ;
  wire \spo[11]_INST_0_i_14_n_0 ;
  wire \spo[11]_INST_0_i_15_n_0 ;
  wire \spo[11]_INST_0_i_16_n_0 ;
  wire \spo[11]_INST_0_i_17_n_0 ;
  wire \spo[11]_INST_0_i_18_n_0 ;
  wire \spo[11]_INST_0_i_19_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_20_n_0 ;
  wire \spo[11]_INST_0_i_21_n_0 ;
  wire \spo[11]_INST_0_i_22_n_0 ;
  wire \spo[11]_INST_0_i_23_n_0 ;
  wire \spo[11]_INST_0_i_24_n_0 ;
  wire \spo[11]_INST_0_i_25_n_0 ;
  wire \spo[11]_INST_0_i_26_n_0 ;
  wire \spo[11]_INST_0_i_27_n_0 ;
  wire \spo[11]_INST_0_i_28_n_0 ;
  wire \spo[11]_INST_0_i_29_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_30_n_0 ;
  wire \spo[11]_INST_0_i_31_n_0 ;
  wire \spo[11]_INST_0_i_32_n_0 ;
  wire \spo[11]_INST_0_i_33_n_0 ;
  wire \spo[11]_INST_0_i_34_n_0 ;
  wire \spo[11]_INST_0_i_35_n_0 ;
  wire \spo[11]_INST_0_i_36_n_0 ;
  wire \spo[11]_INST_0_i_37_n_0 ;
  wire \spo[11]_INST_0_i_38_n_0 ;
  wire \spo[11]_INST_0_i_39_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_40_n_0 ;
  wire \spo[11]_INST_0_i_41_n_0 ;
  wire \spo[11]_INST_0_i_42_n_0 ;
  wire \spo[11]_INST_0_i_43_n_0 ;
  wire \spo[11]_INST_0_i_44_n_0 ;
  wire \spo[11]_INST_0_i_45_n_0 ;
  wire \spo[11]_INST_0_i_46_n_0 ;
  wire \spo[11]_INST_0_i_47_n_0 ;
  wire \spo[11]_INST_0_i_48_n_0 ;
  wire \spo[11]_INST_0_i_49_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_50_n_0 ;
  wire \spo[11]_INST_0_i_51_n_0 ;
  wire \spo[11]_INST_0_i_52_n_0 ;
  wire \spo[11]_INST_0_i_53_n_0 ;
  wire \spo[11]_INST_0_i_54_n_0 ;
  wire \spo[11]_INST_0_i_55_n_0 ;
  wire \spo[11]_INST_0_i_56_n_0 ;
  wire \spo[11]_INST_0_i_57_n_0 ;
  wire \spo[11]_INST_0_i_58_n_0 ;
  wire \spo[11]_INST_0_i_59_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_60_n_0 ;
  wire \spo[11]_INST_0_i_61_n_0 ;
  wire \spo[11]_INST_0_i_62_n_0 ;
  wire \spo[11]_INST_0_i_63_n_0 ;
  wire \spo[11]_INST_0_i_64_n_0 ;
  wire \spo[11]_INST_0_i_65_n_0 ;
  wire \spo[11]_INST_0_i_66_n_0 ;
  wire \spo[11]_INST_0_i_67_n_0 ;
  wire \spo[11]_INST_0_i_68_n_0 ;
  wire \spo[11]_INST_0_i_69_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_70_n_0 ;
  wire \spo[11]_INST_0_i_71_n_0 ;
  wire \spo[11]_INST_0_i_72_n_0 ;
  wire \spo[11]_INST_0_i_73_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[12]_INST_0_i_10_n_0 ;
  wire \spo[12]_INST_0_i_11_n_0 ;
  wire \spo[12]_INST_0_i_12_n_0 ;
  wire \spo[12]_INST_0_i_13_n_0 ;
  wire \spo[12]_INST_0_i_14_n_0 ;
  wire \spo[12]_INST_0_i_15_n_0 ;
  wire \spo[12]_INST_0_i_16_n_0 ;
  wire \spo[12]_INST_0_i_17_n_0 ;
  wire \spo[12]_INST_0_i_18_n_0 ;
  wire \spo[12]_INST_0_i_19_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_20_n_0 ;
  wire \spo[12]_INST_0_i_21_n_0 ;
  wire \spo[12]_INST_0_i_22_n_0 ;
  wire \spo[12]_INST_0_i_23_n_0 ;
  wire \spo[12]_INST_0_i_24_n_0 ;
  wire \spo[12]_INST_0_i_25_n_0 ;
  wire \spo[12]_INST_0_i_26_n_0 ;
  wire \spo[12]_INST_0_i_27_n_0 ;
  wire \spo[12]_INST_0_i_28_n_0 ;
  wire \spo[12]_INST_0_i_29_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_30_n_0 ;
  wire \spo[12]_INST_0_i_31_n_0 ;
  wire \spo[12]_INST_0_i_32_n_0 ;
  wire \spo[12]_INST_0_i_33_n_0 ;
  wire \spo[12]_INST_0_i_34_n_0 ;
  wire \spo[12]_INST_0_i_35_n_0 ;
  wire \spo[12]_INST_0_i_36_n_0 ;
  wire \spo[12]_INST_0_i_37_n_0 ;
  wire \spo[12]_INST_0_i_38_n_0 ;
  wire \spo[12]_INST_0_i_39_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_40_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_8_n_0 ;
  wire \spo[12]_INST_0_i_9_n_0 ;
  wire \spo[13]_INST_0_i_10_n_0 ;
  wire \spo[13]_INST_0_i_11_n_0 ;
  wire \spo[13]_INST_0_i_12_n_0 ;
  wire \spo[13]_INST_0_i_13_n_0 ;
  wire \spo[13]_INST_0_i_14_n_0 ;
  wire \spo[13]_INST_0_i_15_n_0 ;
  wire \spo[13]_INST_0_i_16_n_0 ;
  wire \spo[13]_INST_0_i_17_n_0 ;
  wire \spo[13]_INST_0_i_18_n_0 ;
  wire \spo[13]_INST_0_i_19_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_20_n_0 ;
  wire \spo[13]_INST_0_i_21_n_0 ;
  wire \spo[13]_INST_0_i_22_n_0 ;
  wire \spo[13]_INST_0_i_23_n_0 ;
  wire \spo[13]_INST_0_i_24_n_0 ;
  wire \spo[13]_INST_0_i_25_n_0 ;
  wire \spo[13]_INST_0_i_26_n_0 ;
  wire \spo[13]_INST_0_i_27_n_0 ;
  wire \spo[13]_INST_0_i_28_n_0 ;
  wire \spo[13]_INST_0_i_29_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_30_n_0 ;
  wire \spo[13]_INST_0_i_31_n_0 ;
  wire \spo[13]_INST_0_i_32_n_0 ;
  wire \spo[13]_INST_0_i_33_n_0 ;
  wire \spo[13]_INST_0_i_34_n_0 ;
  wire \spo[13]_INST_0_i_35_n_0 ;
  wire \spo[13]_INST_0_i_36_n_0 ;
  wire \spo[13]_INST_0_i_37_n_0 ;
  wire \spo[13]_INST_0_i_38_n_0 ;
  wire \spo[13]_INST_0_i_39_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_40_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_9_n_0 ;
  wire \spo[14]_INST_0_i_10_n_0 ;
  wire \spo[14]_INST_0_i_11_n_0 ;
  wire \spo[14]_INST_0_i_12_n_0 ;
  wire \spo[14]_INST_0_i_13_n_0 ;
  wire \spo[14]_INST_0_i_14_n_0 ;
  wire \spo[14]_INST_0_i_15_n_0 ;
  wire \spo[14]_INST_0_i_16_n_0 ;
  wire \spo[14]_INST_0_i_17_n_0 ;
  wire \spo[14]_INST_0_i_18_n_0 ;
  wire \spo[14]_INST_0_i_19_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_20_n_0 ;
  wire \spo[14]_INST_0_i_21_n_0 ;
  wire \spo[14]_INST_0_i_22_n_0 ;
  wire \spo[14]_INST_0_i_23_n_0 ;
  wire \spo[14]_INST_0_i_24_n_0 ;
  wire \spo[14]_INST_0_i_25_n_0 ;
  wire \spo[14]_INST_0_i_26_n_0 ;
  wire \spo[14]_INST_0_i_27_n_0 ;
  wire \spo[14]_INST_0_i_28_n_0 ;
  wire \spo[14]_INST_0_i_29_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_30_n_0 ;
  wire \spo[14]_INST_0_i_31_n_0 ;
  wire \spo[14]_INST_0_i_32_n_0 ;
  wire \spo[14]_INST_0_i_33_n_0 ;
  wire \spo[14]_INST_0_i_34_n_0 ;
  wire \spo[14]_INST_0_i_35_n_0 ;
  wire \spo[14]_INST_0_i_36_n_0 ;
  wire \spo[14]_INST_0_i_37_n_0 ;
  wire \spo[14]_INST_0_i_38_n_0 ;
  wire \spo[14]_INST_0_i_39_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_40_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_8_n_0 ;
  wire \spo[14]_INST_0_i_9_n_0 ;
  wire \spo[15]_INST_0_i_10_n_0 ;
  wire \spo[15]_INST_0_i_11_n_0 ;
  wire \spo[15]_INST_0_i_12_n_0 ;
  wire \spo[15]_INST_0_i_13_n_0 ;
  wire \spo[15]_INST_0_i_14_n_0 ;
  wire \spo[15]_INST_0_i_15_n_0 ;
  wire \spo[15]_INST_0_i_16_n_0 ;
  wire \spo[15]_INST_0_i_17_n_0 ;
  wire \spo[15]_INST_0_i_18_n_0 ;
  wire \spo[15]_INST_0_i_19_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_20_n_0 ;
  wire \spo[15]_INST_0_i_21_n_0 ;
  wire \spo[15]_INST_0_i_22_n_0 ;
  wire \spo[15]_INST_0_i_23_n_0 ;
  wire \spo[15]_INST_0_i_24_n_0 ;
  wire \spo[15]_INST_0_i_25_n_0 ;
  wire \spo[15]_INST_0_i_26_n_0 ;
  wire \spo[15]_INST_0_i_27_n_0 ;
  wire \spo[15]_INST_0_i_28_n_0 ;
  wire \spo[15]_INST_0_i_29_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_30_n_0 ;
  wire \spo[15]_INST_0_i_31_n_0 ;
  wire \spo[15]_INST_0_i_32_n_0 ;
  wire \spo[15]_INST_0_i_33_n_0 ;
  wire \spo[15]_INST_0_i_34_n_0 ;
  wire \spo[15]_INST_0_i_35_n_0 ;
  wire \spo[15]_INST_0_i_36_n_0 ;
  wire \spo[15]_INST_0_i_37_n_0 ;
  wire \spo[15]_INST_0_i_38_n_0 ;
  wire \spo[15]_INST_0_i_39_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_40_n_0 ;
  wire \spo[15]_INST_0_i_41_n_0 ;
  wire \spo[15]_INST_0_i_42_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_8_n_0 ;
  wire \spo[15]_INST_0_i_9_n_0 ;
  wire \spo[16]_INST_0_i_10_n_0 ;
  wire \spo[16]_INST_0_i_11_n_0 ;
  wire \spo[16]_INST_0_i_12_n_0 ;
  wire \spo[16]_INST_0_i_13_n_0 ;
  wire \spo[16]_INST_0_i_14_n_0 ;
  wire \spo[16]_INST_0_i_15_n_0 ;
  wire \spo[16]_INST_0_i_16_n_0 ;
  wire \spo[16]_INST_0_i_17_n_0 ;
  wire \spo[16]_INST_0_i_18_n_0 ;
  wire \spo[16]_INST_0_i_19_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_20_n_0 ;
  wire \spo[16]_INST_0_i_21_n_0 ;
  wire \spo[16]_INST_0_i_22_n_0 ;
  wire \spo[16]_INST_0_i_23_n_0 ;
  wire \spo[16]_INST_0_i_24_n_0 ;
  wire \spo[16]_INST_0_i_25_n_0 ;
  wire \spo[16]_INST_0_i_26_n_0 ;
  wire \spo[16]_INST_0_i_27_n_0 ;
  wire \spo[16]_INST_0_i_28_n_0 ;
  wire \spo[16]_INST_0_i_29_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_30_n_0 ;
  wire \spo[16]_INST_0_i_31_n_0 ;
  wire \spo[16]_INST_0_i_32_n_0 ;
  wire \spo[16]_INST_0_i_33_n_0 ;
  wire \spo[16]_INST_0_i_34_n_0 ;
  wire \spo[16]_INST_0_i_35_n_0 ;
  wire \spo[16]_INST_0_i_36_n_0 ;
  wire \spo[16]_INST_0_i_37_n_0 ;
  wire \spo[16]_INST_0_i_38_n_0 ;
  wire \spo[16]_INST_0_i_39_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_40_n_0 ;
  wire \spo[16]_INST_0_i_41_n_0 ;
  wire \spo[16]_INST_0_i_42_n_0 ;
  wire \spo[16]_INST_0_i_43_n_0 ;
  wire \spo[16]_INST_0_i_44_n_0 ;
  wire \spo[16]_INST_0_i_45_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_7_n_0 ;
  wire \spo[16]_INST_0_i_8_n_0 ;
  wire \spo[16]_INST_0_i_9_n_0 ;
  wire \spo[17]_INST_0_i_10_n_0 ;
  wire \spo[17]_INST_0_i_11_n_0 ;
  wire \spo[17]_INST_0_i_12_n_0 ;
  wire \spo[17]_INST_0_i_13_n_0 ;
  wire \spo[17]_INST_0_i_14_n_0 ;
  wire \spo[17]_INST_0_i_15_n_0 ;
  wire \spo[17]_INST_0_i_16_n_0 ;
  wire \spo[17]_INST_0_i_17_n_0 ;
  wire \spo[17]_INST_0_i_18_n_0 ;
  wire \spo[17]_INST_0_i_19_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_20_n_0 ;
  wire \spo[17]_INST_0_i_21_n_0 ;
  wire \spo[17]_INST_0_i_22_n_0 ;
  wire \spo[17]_INST_0_i_23_n_0 ;
  wire \spo[17]_INST_0_i_24_n_0 ;
  wire \spo[17]_INST_0_i_25_n_0 ;
  wire \spo[17]_INST_0_i_26_n_0 ;
  wire \spo[17]_INST_0_i_27_n_0 ;
  wire \spo[17]_INST_0_i_28_n_0 ;
  wire \spo[17]_INST_0_i_29_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_30_n_0 ;
  wire \spo[17]_INST_0_i_31_n_0 ;
  wire \spo[17]_INST_0_i_32_n_0 ;
  wire \spo[17]_INST_0_i_33_n_0 ;
  wire \spo[17]_INST_0_i_34_n_0 ;
  wire \spo[17]_INST_0_i_35_n_0 ;
  wire \spo[17]_INST_0_i_36_n_0 ;
  wire \spo[17]_INST_0_i_37_n_0 ;
  wire \spo[17]_INST_0_i_38_n_0 ;
  wire \spo[17]_INST_0_i_39_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_40_n_0 ;
  wire \spo[17]_INST_0_i_41_n_0 ;
  wire \spo[17]_INST_0_i_42_n_0 ;
  wire \spo[17]_INST_0_i_43_n_0 ;
  wire \spo[17]_INST_0_i_44_n_0 ;
  wire \spo[17]_INST_0_i_45_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_7_n_0 ;
  wire \spo[17]_INST_0_i_8_n_0 ;
  wire \spo[17]_INST_0_i_9_n_0 ;
  wire \spo[18]_INST_0_i_10_n_0 ;
  wire \spo[18]_INST_0_i_11_n_0 ;
  wire \spo[18]_INST_0_i_12_n_0 ;
  wire \spo[18]_INST_0_i_13_n_0 ;
  wire \spo[18]_INST_0_i_14_n_0 ;
  wire \spo[18]_INST_0_i_15_n_0 ;
  wire \spo[18]_INST_0_i_16_n_0 ;
  wire \spo[18]_INST_0_i_17_n_0 ;
  wire \spo[18]_INST_0_i_18_n_0 ;
  wire \spo[18]_INST_0_i_19_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_20_n_0 ;
  wire \spo[18]_INST_0_i_21_n_0 ;
  wire \spo[18]_INST_0_i_22_n_0 ;
  wire \spo[18]_INST_0_i_23_n_0 ;
  wire \spo[18]_INST_0_i_24_n_0 ;
  wire \spo[18]_INST_0_i_25_n_0 ;
  wire \spo[18]_INST_0_i_26_n_0 ;
  wire \spo[18]_INST_0_i_27_n_0 ;
  wire \spo[18]_INST_0_i_28_n_0 ;
  wire \spo[18]_INST_0_i_29_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_30_n_0 ;
  wire \spo[18]_INST_0_i_31_n_0 ;
  wire \spo[18]_INST_0_i_32_n_0 ;
  wire \spo[18]_INST_0_i_33_n_0 ;
  wire \spo[18]_INST_0_i_34_n_0 ;
  wire \spo[18]_INST_0_i_35_n_0 ;
  wire \spo[18]_INST_0_i_36_n_0 ;
  wire \spo[18]_INST_0_i_37_n_0 ;
  wire \spo[18]_INST_0_i_38_n_0 ;
  wire \spo[18]_INST_0_i_39_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_40_n_0 ;
  wire \spo[18]_INST_0_i_41_n_0 ;
  wire \spo[18]_INST_0_i_42_n_0 ;
  wire \spo[18]_INST_0_i_43_n_0 ;
  wire \spo[18]_INST_0_i_44_n_0 ;
  wire \spo[18]_INST_0_i_45_n_0 ;
  wire \spo[18]_INST_0_i_46_n_0 ;
  wire \spo[18]_INST_0_i_47_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_7_n_0 ;
  wire \spo[18]_INST_0_i_8_n_0 ;
  wire \spo[18]_INST_0_i_9_n_0 ;
  wire \spo[19]_INST_0_i_10_n_0 ;
  wire \spo[19]_INST_0_i_11_n_0 ;
  wire \spo[19]_INST_0_i_12_n_0 ;
  wire \spo[19]_INST_0_i_13_n_0 ;
  wire \spo[19]_INST_0_i_14_n_0 ;
  wire \spo[19]_INST_0_i_15_n_0 ;
  wire \spo[19]_INST_0_i_16_n_0 ;
  wire \spo[19]_INST_0_i_17_n_0 ;
  wire \spo[19]_INST_0_i_18_n_0 ;
  wire \spo[19]_INST_0_i_19_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_20_n_0 ;
  wire \spo[19]_INST_0_i_21_n_0 ;
  wire \spo[19]_INST_0_i_22_n_0 ;
  wire \spo[19]_INST_0_i_23_n_0 ;
  wire \spo[19]_INST_0_i_24_n_0 ;
  wire \spo[19]_INST_0_i_25_n_0 ;
  wire \spo[19]_INST_0_i_26_n_0 ;
  wire \spo[19]_INST_0_i_27_n_0 ;
  wire \spo[19]_INST_0_i_28_n_0 ;
  wire \spo[19]_INST_0_i_29_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_30_n_0 ;
  wire \spo[19]_INST_0_i_31_n_0 ;
  wire \spo[19]_INST_0_i_32_n_0 ;
  wire \spo[19]_INST_0_i_33_n_0 ;
  wire \spo[19]_INST_0_i_34_n_0 ;
  wire \spo[19]_INST_0_i_35_n_0 ;
  wire \spo[19]_INST_0_i_36_n_0 ;
  wire \spo[19]_INST_0_i_37_n_0 ;
  wire \spo[19]_INST_0_i_38_n_0 ;
  wire \spo[19]_INST_0_i_39_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_40_n_0 ;
  wire \spo[19]_INST_0_i_41_n_0 ;
  wire \spo[19]_INST_0_i_42_n_0 ;
  wire \spo[19]_INST_0_i_43_n_0 ;
  wire \spo[19]_INST_0_i_44_n_0 ;
  wire \spo[19]_INST_0_i_45_n_0 ;
  wire \spo[19]_INST_0_i_46_n_0 ;
  wire \spo[19]_INST_0_i_47_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[19]_INST_0_i_8_n_0 ;
  wire \spo[19]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_36_n_0 ;
  wire \spo[1]_INST_0_i_37_n_0 ;
  wire \spo[1]_INST_0_i_38_n_0 ;
  wire \spo[1]_INST_0_i_39_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_40_n_0 ;
  wire \spo[1]_INST_0_i_41_n_0 ;
  wire \spo[1]_INST_0_i_42_n_0 ;
  wire \spo[1]_INST_0_i_43_n_0 ;
  wire \spo[1]_INST_0_i_44_n_0 ;
  wire \spo[1]_INST_0_i_45_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_10_n_0 ;
  wire \spo[20]_INST_0_i_11_n_0 ;
  wire \spo[20]_INST_0_i_12_n_0 ;
  wire \spo[20]_INST_0_i_13_n_0 ;
  wire \spo[20]_INST_0_i_14_n_0 ;
  wire \spo[20]_INST_0_i_15_n_0 ;
  wire \spo[20]_INST_0_i_16_n_0 ;
  wire \spo[20]_INST_0_i_17_n_0 ;
  wire \spo[20]_INST_0_i_18_n_0 ;
  wire \spo[20]_INST_0_i_19_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_20_n_0 ;
  wire \spo[20]_INST_0_i_21_n_0 ;
  wire \spo[20]_INST_0_i_22_n_0 ;
  wire \spo[20]_INST_0_i_23_n_0 ;
  wire \spo[20]_INST_0_i_24_n_0 ;
  wire \spo[20]_INST_0_i_25_n_0 ;
  wire \spo[20]_INST_0_i_26_n_0 ;
  wire \spo[20]_INST_0_i_27_n_0 ;
  wire \spo[20]_INST_0_i_28_n_0 ;
  wire \spo[20]_INST_0_i_29_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_30_n_0 ;
  wire \spo[20]_INST_0_i_31_n_0 ;
  wire \spo[20]_INST_0_i_32_n_0 ;
  wire \spo[20]_INST_0_i_33_n_0 ;
  wire \spo[20]_INST_0_i_34_n_0 ;
  wire \spo[20]_INST_0_i_35_n_0 ;
  wire \spo[20]_INST_0_i_36_n_0 ;
  wire \spo[20]_INST_0_i_37_n_0 ;
  wire \spo[20]_INST_0_i_38_n_0 ;
  wire \spo[20]_INST_0_i_39_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_40_n_0 ;
  wire \spo[20]_INST_0_i_41_n_0 ;
  wire \spo[20]_INST_0_i_42_n_0 ;
  wire \spo[20]_INST_0_i_43_n_0 ;
  wire \spo[20]_INST_0_i_44_n_0 ;
  wire \spo[20]_INST_0_i_45_n_0 ;
  wire \spo[20]_INST_0_i_46_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_7_n_0 ;
  wire \spo[20]_INST_0_i_8_n_0 ;
  wire \spo[20]_INST_0_i_9_n_0 ;
  wire \spo[21]_INST_0_i_10_n_0 ;
  wire \spo[21]_INST_0_i_11_n_0 ;
  wire \spo[21]_INST_0_i_12_n_0 ;
  wire \spo[21]_INST_0_i_13_n_0 ;
  wire \spo[21]_INST_0_i_14_n_0 ;
  wire \spo[21]_INST_0_i_15_n_0 ;
  wire \spo[21]_INST_0_i_16_n_0 ;
  wire \spo[21]_INST_0_i_17_n_0 ;
  wire \spo[21]_INST_0_i_18_n_0 ;
  wire \spo[21]_INST_0_i_19_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_20_n_0 ;
  wire \spo[21]_INST_0_i_21_n_0 ;
  wire \spo[21]_INST_0_i_22_n_0 ;
  wire \spo[21]_INST_0_i_23_n_0 ;
  wire \spo[21]_INST_0_i_24_n_0 ;
  wire \spo[21]_INST_0_i_25_n_0 ;
  wire \spo[21]_INST_0_i_26_n_0 ;
  wire \spo[21]_INST_0_i_27_n_0 ;
  wire \spo[21]_INST_0_i_28_n_0 ;
  wire \spo[21]_INST_0_i_29_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_30_n_0 ;
  wire \spo[21]_INST_0_i_31_n_0 ;
  wire \spo[21]_INST_0_i_32_n_0 ;
  wire \spo[21]_INST_0_i_33_n_0 ;
  wire \spo[21]_INST_0_i_34_n_0 ;
  wire \spo[21]_INST_0_i_35_n_0 ;
  wire \spo[21]_INST_0_i_36_n_0 ;
  wire \spo[21]_INST_0_i_37_n_0 ;
  wire \spo[21]_INST_0_i_38_n_0 ;
  wire \spo[21]_INST_0_i_39_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_40_n_0 ;
  wire \spo[21]_INST_0_i_41_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_10_n_0 ;
  wire \spo[22]_INST_0_i_11_n_0 ;
  wire \spo[22]_INST_0_i_12_n_0 ;
  wire \spo[22]_INST_0_i_13_n_0 ;
  wire \spo[22]_INST_0_i_14_n_0 ;
  wire \spo[22]_INST_0_i_15_n_0 ;
  wire \spo[22]_INST_0_i_16_n_0 ;
  wire \spo[22]_INST_0_i_17_n_0 ;
  wire \spo[22]_INST_0_i_18_n_0 ;
  wire \spo[22]_INST_0_i_19_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_20_n_0 ;
  wire \spo[22]_INST_0_i_21_n_0 ;
  wire \spo[22]_INST_0_i_22_n_0 ;
  wire \spo[22]_INST_0_i_23_n_0 ;
  wire \spo[22]_INST_0_i_24_n_0 ;
  wire \spo[22]_INST_0_i_25_n_0 ;
  wire \spo[22]_INST_0_i_26_n_0 ;
  wire \spo[22]_INST_0_i_27_n_0 ;
  wire \spo[22]_INST_0_i_28_n_0 ;
  wire \spo[22]_INST_0_i_29_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_30_n_0 ;
  wire \spo[22]_INST_0_i_31_n_0 ;
  wire \spo[22]_INST_0_i_32_n_0 ;
  wire \spo[22]_INST_0_i_33_n_0 ;
  wire \spo[22]_INST_0_i_34_n_0 ;
  wire \spo[22]_INST_0_i_35_n_0 ;
  wire \spo[22]_INST_0_i_36_n_0 ;
  wire \spo[22]_INST_0_i_37_n_0 ;
  wire \spo[22]_INST_0_i_38_n_0 ;
  wire \spo[22]_INST_0_i_39_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_40_n_0 ;
  wire \spo[22]_INST_0_i_41_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_10_n_0 ;
  wire \spo[23]_INST_0_i_11_n_0 ;
  wire \spo[23]_INST_0_i_12_n_0 ;
  wire \spo[23]_INST_0_i_13_n_0 ;
  wire \spo[23]_INST_0_i_14_n_0 ;
  wire \spo[23]_INST_0_i_15_n_0 ;
  wire \spo[23]_INST_0_i_16_n_0 ;
  wire \spo[23]_INST_0_i_17_n_0 ;
  wire \spo[23]_INST_0_i_18_n_0 ;
  wire \spo[23]_INST_0_i_19_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_20_n_0 ;
  wire \spo[23]_INST_0_i_21_n_0 ;
  wire \spo[23]_INST_0_i_22_n_0 ;
  wire \spo[23]_INST_0_i_23_n_0 ;
  wire \spo[23]_INST_0_i_24_n_0 ;
  wire \spo[23]_INST_0_i_25_n_0 ;
  wire \spo[23]_INST_0_i_26_n_0 ;
  wire \spo[23]_INST_0_i_27_n_0 ;
  wire \spo[23]_INST_0_i_28_n_0 ;
  wire \spo[23]_INST_0_i_29_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_30_n_0 ;
  wire \spo[23]_INST_0_i_31_n_0 ;
  wire \spo[23]_INST_0_i_32_n_0 ;
  wire \spo[23]_INST_0_i_33_n_0 ;
  wire \spo[23]_INST_0_i_34_n_0 ;
  wire \spo[23]_INST_0_i_35_n_0 ;
  wire \spo[23]_INST_0_i_36_n_0 ;
  wire \spo[23]_INST_0_i_37_n_0 ;
  wire \spo[23]_INST_0_i_38_n_0 ;
  wire \spo[23]_INST_0_i_39_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_40_n_0 ;
  wire \spo[23]_INST_0_i_41_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[23]_INST_0_i_9_n_0 ;
  wire \spo[24]_INST_0_i_10_n_0 ;
  wire \spo[24]_INST_0_i_11_n_0 ;
  wire \spo[24]_INST_0_i_12_n_0 ;
  wire \spo[24]_INST_0_i_13_n_0 ;
  wire \spo[24]_INST_0_i_14_n_0 ;
  wire \spo[24]_INST_0_i_15_n_0 ;
  wire \spo[24]_INST_0_i_16_n_0 ;
  wire \spo[24]_INST_0_i_17_n_0 ;
  wire \spo[24]_INST_0_i_18_n_0 ;
  wire \spo[24]_INST_0_i_19_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_20_n_0 ;
  wire \spo[24]_INST_0_i_21_n_0 ;
  wire \spo[24]_INST_0_i_22_n_0 ;
  wire \spo[24]_INST_0_i_23_n_0 ;
  wire \spo[24]_INST_0_i_24_n_0 ;
  wire \spo[24]_INST_0_i_25_n_0 ;
  wire \spo[24]_INST_0_i_26_n_0 ;
  wire \spo[24]_INST_0_i_27_n_0 ;
  wire \spo[24]_INST_0_i_28_n_0 ;
  wire \spo[24]_INST_0_i_29_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_30_n_0 ;
  wire \spo[24]_INST_0_i_31_n_0 ;
  wire \spo[24]_INST_0_i_32_n_0 ;
  wire \spo[24]_INST_0_i_33_n_0 ;
  wire \spo[24]_INST_0_i_34_n_0 ;
  wire \spo[24]_INST_0_i_35_n_0 ;
  wire \spo[24]_INST_0_i_36_n_0 ;
  wire \spo[24]_INST_0_i_37_n_0 ;
  wire \spo[24]_INST_0_i_38_n_0 ;
  wire \spo[24]_INST_0_i_39_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_40_n_0 ;
  wire \spo[24]_INST_0_i_41_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_8_n_0 ;
  wire \spo[24]_INST_0_i_9_n_0 ;
  wire \spo[25]_INST_0_i_10_n_0 ;
  wire \spo[25]_INST_0_i_11_n_0 ;
  wire \spo[25]_INST_0_i_12_n_0 ;
  wire \spo[25]_INST_0_i_13_n_0 ;
  wire \spo[25]_INST_0_i_14_n_0 ;
  wire \spo[25]_INST_0_i_15_n_0 ;
  wire \spo[25]_INST_0_i_16_n_0 ;
  wire \spo[25]_INST_0_i_17_n_0 ;
  wire \spo[25]_INST_0_i_18_n_0 ;
  wire \spo[25]_INST_0_i_19_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_20_n_0 ;
  wire \spo[25]_INST_0_i_21_n_0 ;
  wire \spo[25]_INST_0_i_22_n_0 ;
  wire \spo[25]_INST_0_i_23_n_0 ;
  wire \spo[25]_INST_0_i_24_n_0 ;
  wire \spo[25]_INST_0_i_25_n_0 ;
  wire \spo[25]_INST_0_i_26_n_0 ;
  wire \spo[25]_INST_0_i_27_n_0 ;
  wire \spo[25]_INST_0_i_28_n_0 ;
  wire \spo[25]_INST_0_i_29_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_30_n_0 ;
  wire \spo[25]_INST_0_i_31_n_0 ;
  wire \spo[25]_INST_0_i_32_n_0 ;
  wire \spo[25]_INST_0_i_33_n_0 ;
  wire \spo[25]_INST_0_i_34_n_0 ;
  wire \spo[25]_INST_0_i_35_n_0 ;
  wire \spo[25]_INST_0_i_36_n_0 ;
  wire \spo[25]_INST_0_i_37_n_0 ;
  wire \spo[25]_INST_0_i_38_n_0 ;
  wire \spo[25]_INST_0_i_39_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_40_n_0 ;
  wire \spo[25]_INST_0_i_41_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[25]_INST_0_i_8_n_0 ;
  wire \spo[25]_INST_0_i_9_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_10_n_0 ;
  wire \spo[29]_INST_0_i_11_n_0 ;
  wire \spo[29]_INST_0_i_12_n_0 ;
  wire \spo[29]_INST_0_i_13_n_0 ;
  wire \spo[29]_INST_0_i_14_n_0 ;
  wire \spo[29]_INST_0_i_15_n_0 ;
  wire \spo[29]_INST_0_i_16_n_0 ;
  wire \spo[29]_INST_0_i_17_n_0 ;
  wire \spo[29]_INST_0_i_18_n_0 ;
  wire \spo[29]_INST_0_i_19_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_20_n_0 ;
  wire \spo[29]_INST_0_i_21_n_0 ;
  wire \spo[29]_INST_0_i_22_n_0 ;
  wire \spo[29]_INST_0_i_23_n_0 ;
  wire \spo[29]_INST_0_i_24_n_0 ;
  wire \spo[29]_INST_0_i_25_n_0 ;
  wire \spo[29]_INST_0_i_26_n_0 ;
  wire \spo[29]_INST_0_i_27_n_0 ;
  wire \spo[29]_INST_0_i_28_n_0 ;
  wire \spo[29]_INST_0_i_29_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_30_n_0 ;
  wire \spo[29]_INST_0_i_31_n_0 ;
  wire \spo[29]_INST_0_i_32_n_0 ;
  wire \spo[29]_INST_0_i_33_n_0 ;
  wire \spo[29]_INST_0_i_34_n_0 ;
  wire \spo[29]_INST_0_i_35_n_0 ;
  wire \spo[29]_INST_0_i_36_n_0 ;
  wire \spo[29]_INST_0_i_37_n_0 ;
  wire \spo[29]_INST_0_i_38_n_0 ;
  wire \spo[29]_INST_0_i_39_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_40_n_0 ;
  wire \spo[29]_INST_0_i_41_n_0 ;
  wire \spo[29]_INST_0_i_42_n_0 ;
  wire \spo[29]_INST_0_i_43_n_0 ;
  wire \spo[29]_INST_0_i_44_n_0 ;
  wire \spo[29]_INST_0_i_45_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_38_n_0 ;
  wire \spo[2]_INST_0_i_39_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_40_n_0 ;
  wire \spo[2]_INST_0_i_41_n_0 ;
  wire \spo[2]_INST_0_i_42_n_0 ;
  wire \spo[2]_INST_0_i_43_n_0 ;
  wire \spo[2]_INST_0_i_44_n_0 ;
  wire \spo[2]_INST_0_i_45_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[30]_INST_0_i_10_n_0 ;
  wire \spo[30]_INST_0_i_11_n_0 ;
  wire \spo[30]_INST_0_i_12_n_0 ;
  wire \spo[30]_INST_0_i_13_n_0 ;
  wire \spo[30]_INST_0_i_14_n_0 ;
  wire \spo[30]_INST_0_i_15_n_0 ;
  wire \spo[30]_INST_0_i_16_n_0 ;
  wire \spo[30]_INST_0_i_17_n_0 ;
  wire \spo[30]_INST_0_i_18_n_0 ;
  wire \spo[30]_INST_0_i_19_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_20_n_0 ;
  wire \spo[30]_INST_0_i_21_n_0 ;
  wire \spo[30]_INST_0_i_22_n_0 ;
  wire \spo[30]_INST_0_i_23_n_0 ;
  wire \spo[30]_INST_0_i_24_n_0 ;
  wire \spo[30]_INST_0_i_25_n_0 ;
  wire \spo[30]_INST_0_i_26_n_0 ;
  wire \spo[30]_INST_0_i_27_n_0 ;
  wire \spo[30]_INST_0_i_28_n_0 ;
  wire \spo[30]_INST_0_i_29_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_30_n_0 ;
  wire \spo[30]_INST_0_i_31_n_0 ;
  wire \spo[30]_INST_0_i_32_n_0 ;
  wire \spo[30]_INST_0_i_33_n_0 ;
  wire \spo[30]_INST_0_i_34_n_0 ;
  wire \spo[30]_INST_0_i_35_n_0 ;
  wire \spo[30]_INST_0_i_36_n_0 ;
  wire \spo[30]_INST_0_i_37_n_0 ;
  wire \spo[30]_INST_0_i_38_n_0 ;
  wire \spo[30]_INST_0_i_39_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_40_n_0 ;
  wire \spo[30]_INST_0_i_41_n_0 ;
  wire \spo[30]_INST_0_i_42_n_0 ;
  wire \spo[30]_INST_0_i_43_n_0 ;
  wire \spo[30]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_5_n_0 ;
  wire \spo[30]_INST_0_i_6_n_0 ;
  wire \spo[30]_INST_0_i_7_n_0 ;
  wire \spo[30]_INST_0_i_8_n_0 ;
  wire \spo[30]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_10_n_0 ;
  wire \spo[31]_INST_0_i_11_n_0 ;
  wire \spo[31]_INST_0_i_12_n_0 ;
  wire \spo[31]_INST_0_i_13_n_0 ;
  wire \spo[31]_INST_0_i_14_n_0 ;
  wire \spo[31]_INST_0_i_15_n_0 ;
  wire \spo[31]_INST_0_i_16_n_0 ;
  wire \spo[31]_INST_0_i_17_n_0 ;
  wire \spo[31]_INST_0_i_18_n_0 ;
  wire \spo[31]_INST_0_i_19_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_20_n_0 ;
  wire \spo[31]_INST_0_i_21_n_0 ;
  wire \spo[31]_INST_0_i_22_n_0 ;
  wire \spo[31]_INST_0_i_23_n_0 ;
  wire \spo[31]_INST_0_i_24_n_0 ;
  wire \spo[31]_INST_0_i_25_n_0 ;
  wire \spo[31]_INST_0_i_26_n_0 ;
  wire \spo[31]_INST_0_i_27_n_0 ;
  wire \spo[31]_INST_0_i_28_n_0 ;
  wire \spo[31]_INST_0_i_29_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_30_n_0 ;
  wire \spo[31]_INST_0_i_31_n_0 ;
  wire \spo[31]_INST_0_i_32_n_0 ;
  wire \spo[31]_INST_0_i_33_n_0 ;
  wire \spo[31]_INST_0_i_34_n_0 ;
  wire \spo[31]_INST_0_i_35_n_0 ;
  wire \spo[31]_INST_0_i_36_n_0 ;
  wire \spo[31]_INST_0_i_37_n_0 ;
  wire \spo[31]_INST_0_i_38_n_0 ;
  wire \spo[31]_INST_0_i_39_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_40_n_0 ;
  wire \spo[31]_INST_0_i_41_n_0 ;
  wire \spo[31]_INST_0_i_42_n_0 ;
  wire \spo[31]_INST_0_i_43_n_0 ;
  wire \spo[31]_INST_0_i_44_n_0 ;
  wire \spo[31]_INST_0_i_45_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_36_n_0 ;
  wire \spo[3]_INST_0_i_37_n_0 ;
  wire \spo[3]_INST_0_i_38_n_0 ;
  wire \spo[3]_INST_0_i_39_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_40_n_0 ;
  wire \spo[3]_INST_0_i_41_n_0 ;
  wire \spo[3]_INST_0_i_42_n_0 ;
  wire \spo[3]_INST_0_i_43_n_0 ;
  wire \spo[3]_INST_0_i_44_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_31_n_0 ;
  wire \spo[4]_INST_0_i_32_n_0 ;
  wire \spo[4]_INST_0_i_33_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_32_n_0 ;
  wire \spo[5]_INST_0_i_33_n_0 ;
  wire \spo[5]_INST_0_i_34_n_0 ;
  wire \spo[5]_INST_0_i_35_n_0 ;
  wire \spo[5]_INST_0_i_36_n_0 ;
  wire \spo[5]_INST_0_i_37_n_0 ;
  wire \spo[5]_INST_0_i_38_n_0 ;
  wire \spo[5]_INST_0_i_39_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_40_n_0 ;
  wire \spo[5]_INST_0_i_41_n_0 ;
  wire \spo[5]_INST_0_i_42_n_0 ;
  wire \spo[5]_INST_0_i_43_n_0 ;
  wire \spo[5]_INST_0_i_44_n_0 ;
  wire \spo[5]_INST_0_i_45_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_27_n_0 ;
  wire \spo[6]_INST_0_i_28_n_0 ;
  wire \spo[6]_INST_0_i_29_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_30_n_0 ;
  wire \spo[6]_INST_0_i_31_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_17_n_0 ;
  wire \spo[7]_INST_0_i_18_n_0 ;
  wire \spo[7]_INST_0_i_19_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_20_n_0 ;
  wire \spo[7]_INST_0_i_21_n_0 ;
  wire \spo[7]_INST_0_i_22_n_0 ;
  wire \spo[7]_INST_0_i_23_n_0 ;
  wire \spo[7]_INST_0_i_24_n_0 ;
  wire \spo[7]_INST_0_i_25_n_0 ;
  wire \spo[7]_INST_0_i_26_n_0 ;
  wire \spo[7]_INST_0_i_27_n_0 ;
  wire \spo[7]_INST_0_i_28_n_0 ;
  wire \spo[7]_INST_0_i_29_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_30_n_0 ;
  wire \spo[7]_INST_0_i_31_n_0 ;
  wire \spo[7]_INST_0_i_32_n_0 ;
  wire \spo[7]_INST_0_i_33_n_0 ;
  wire \spo[7]_INST_0_i_34_n_0 ;
  wire \spo[7]_INST_0_i_35_n_0 ;
  wire \spo[7]_INST_0_i_36_n_0 ;
  wire \spo[7]_INST_0_i_37_n_0 ;
  wire \spo[7]_INST_0_i_38_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
  wire \spo[8]_INST_0_i_17_n_0 ;
  wire \spo[8]_INST_0_i_18_n_0 ;
  wire \spo[8]_INST_0_i_19_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_20_n_0 ;
  wire \spo[8]_INST_0_i_21_n_0 ;
  wire \spo[8]_INST_0_i_22_n_0 ;
  wire \spo[8]_INST_0_i_23_n_0 ;
  wire \spo[8]_INST_0_i_24_n_0 ;
  wire \spo[8]_INST_0_i_25_n_0 ;
  wire \spo[8]_INST_0_i_26_n_0 ;
  wire \spo[8]_INST_0_i_27_n_0 ;
  wire \spo[8]_INST_0_i_28_n_0 ;
  wire \spo[8]_INST_0_i_29_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_30_n_0 ;
  wire \spo[8]_INST_0_i_31_n_0 ;
  wire \spo[8]_INST_0_i_32_n_0 ;
  wire \spo[8]_INST_0_i_33_n_0 ;
  wire \spo[8]_INST_0_i_34_n_0 ;
  wire \spo[8]_INST_0_i_35_n_0 ;
  wire \spo[8]_INST_0_i_36_n_0 ;
  wire \spo[8]_INST_0_i_37_n_0 ;
  wire \spo[8]_INST_0_i_38_n_0 ;
  wire \spo[8]_INST_0_i_39_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_40_n_0 ;
  wire \spo[8]_INST_0_i_41_n_0 ;
  wire \spo[8]_INST_0_i_42_n_0 ;
  wire \spo[8]_INST_0_i_43_n_0 ;
  wire \spo[8]_INST_0_i_44_n_0 ;
  wire \spo[8]_INST_0_i_45_n_0 ;
  wire \spo[8]_INST_0_i_46_n_0 ;
  wire \spo[8]_INST_0_i_47_n_0 ;
  wire \spo[8]_INST_0_i_48_n_0 ;
  wire \spo[8]_INST_0_i_49_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_50_n_0 ;
  wire \spo[8]_INST_0_i_51_n_0 ;
  wire \spo[8]_INST_0_i_52_n_0 ;
  wire \spo[8]_INST_0_i_53_n_0 ;
  wire \spo[8]_INST_0_i_54_n_0 ;
  wire \spo[8]_INST_0_i_55_n_0 ;
  wire \spo[8]_INST_0_i_56_n_0 ;
  wire \spo[8]_INST_0_i_57_n_0 ;
  wire \spo[8]_INST_0_i_58_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_100_n_0 ;
  wire \spo[9]_INST_0_i_101_n_0 ;
  wire \spo[9]_INST_0_i_102_n_0 ;
  wire \spo[9]_INST_0_i_103_n_0 ;
  wire \spo[9]_INST_0_i_104_n_0 ;
  wire \spo[9]_INST_0_i_105_n_0 ;
  wire \spo[9]_INST_0_i_106_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_13_n_0 ;
  wire \spo[9]_INST_0_i_14_n_0 ;
  wire \spo[9]_INST_0_i_15_n_0 ;
  wire \spo[9]_INST_0_i_16_n_0 ;
  wire \spo[9]_INST_0_i_17_n_0 ;
  wire \spo[9]_INST_0_i_18_n_0 ;
  wire \spo[9]_INST_0_i_19_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_20_n_0 ;
  wire \spo[9]_INST_0_i_21_n_0 ;
  wire \spo[9]_INST_0_i_22_n_0 ;
  wire \spo[9]_INST_0_i_23_n_0 ;
  wire \spo[9]_INST_0_i_24_n_0 ;
  wire \spo[9]_INST_0_i_25_n_0 ;
  wire \spo[9]_INST_0_i_26_n_0 ;
  wire \spo[9]_INST_0_i_27_n_0 ;
  wire \spo[9]_INST_0_i_28_n_0 ;
  wire \spo[9]_INST_0_i_29_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_30_n_0 ;
  wire \spo[9]_INST_0_i_31_n_0 ;
  wire \spo[9]_INST_0_i_32_n_0 ;
  wire \spo[9]_INST_0_i_33_n_0 ;
  wire \spo[9]_INST_0_i_34_n_0 ;
  wire \spo[9]_INST_0_i_35_n_0 ;
  wire \spo[9]_INST_0_i_36_n_0 ;
  wire \spo[9]_INST_0_i_37_n_0 ;
  wire \spo[9]_INST_0_i_38_n_0 ;
  wire \spo[9]_INST_0_i_39_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_40_n_0 ;
  wire \spo[9]_INST_0_i_41_n_0 ;
  wire \spo[9]_INST_0_i_42_n_0 ;
  wire \spo[9]_INST_0_i_43_n_0 ;
  wire \spo[9]_INST_0_i_44_n_0 ;
  wire \spo[9]_INST_0_i_45_n_0 ;
  wire \spo[9]_INST_0_i_46_n_0 ;
  wire \spo[9]_INST_0_i_47_n_0 ;
  wire \spo[9]_INST_0_i_48_n_0 ;
  wire \spo[9]_INST_0_i_49_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_50_n_0 ;
  wire \spo[9]_INST_0_i_51_n_0 ;
  wire \spo[9]_INST_0_i_52_n_0 ;
  wire \spo[9]_INST_0_i_53_n_0 ;
  wire \spo[9]_INST_0_i_54_n_0 ;
  wire \spo[9]_INST_0_i_55_n_0 ;
  wire \spo[9]_INST_0_i_56_n_0 ;
  wire \spo[9]_INST_0_i_57_n_0 ;
  wire \spo[9]_INST_0_i_58_n_0 ;
  wire \spo[9]_INST_0_i_59_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_60_n_0 ;
  wire \spo[9]_INST_0_i_61_n_0 ;
  wire \spo[9]_INST_0_i_62_n_0 ;
  wire \spo[9]_INST_0_i_63_n_0 ;
  wire \spo[9]_INST_0_i_64_n_0 ;
  wire \spo[9]_INST_0_i_65_n_0 ;
  wire \spo[9]_INST_0_i_66_n_0 ;
  wire \spo[9]_INST_0_i_67_n_0 ;
  wire \spo[9]_INST_0_i_68_n_0 ;
  wire \spo[9]_INST_0_i_69_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_70_n_0 ;
  wire \spo[9]_INST_0_i_71_n_0 ;
  wire \spo[9]_INST_0_i_72_n_0 ;
  wire \spo[9]_INST_0_i_73_n_0 ;
  wire \spo[9]_INST_0_i_74_n_0 ;
  wire \spo[9]_INST_0_i_75_n_0 ;
  wire \spo[9]_INST_0_i_76_n_0 ;
  wire \spo[9]_INST_0_i_77_n_0 ;
  wire \spo[9]_INST_0_i_78_n_0 ;
  wire \spo[9]_INST_0_i_79_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_80_n_0 ;
  wire \spo[9]_INST_0_i_81_n_0 ;
  wire \spo[9]_INST_0_i_82_n_0 ;
  wire \spo[9]_INST_0_i_83_n_0 ;
  wire \spo[9]_INST_0_i_84_n_0 ;
  wire \spo[9]_INST_0_i_85_n_0 ;
  wire \spo[9]_INST_0_i_86_n_0 ;
  wire \spo[9]_INST_0_i_87_n_0 ;
  wire \spo[9]_INST_0_i_88_n_0 ;
  wire \spo[9]_INST_0_i_89_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_90_n_0 ;
  wire \spo[9]_INST_0_i_91_n_0 ;
  wire \spo[9]_INST_0_i_92_n_0 ;
  wire \spo[9]_INST_0_i_93_n_0 ;
  wire \spo[9]_INST_0_i_94_n_0 ;
  wire \spo[9]_INST_0_i_95_n_0 ;
  wire \spo[9]_INST_0_i_96_n_0 ;
  wire \spo[9]_INST_0_i_97_n_0 ;
  wire \spo[9]_INST_0_i_98_n_0 ;
  wire \spo[9]_INST_0_i_99_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31:27] = \^spo [31:27];
  assign spo[26] = \^spo [27];
  assign spo[25:0] = \^spo [25:0];
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[0]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[0]_INST_0_i_3_n_0 ),
        .O(\^spo [0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[0]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[0]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_14_n_0 ),
        .I1(\spo[0]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_26_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(\spo[0]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_31_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_32_n_0 ),
        .I1(\spo[0]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_35_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_39_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_35_n_0 ),
        .I1(\spo[0]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_38_n_0 ),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_15 
       (.I0(\spo[0]_INST_0_i_39_n_0 ),
        .I1(\spo[0]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_42_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_37_n_0 ),
        .I1(\spo[0]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_40_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_17 
       (.I0(\spo[0]_INST_0_i_41_n_0 ),
        .I1(\spo[0]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_44_n_0 ),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_18 
       (.I0(\spo[0]_INST_0_i_40_n_0 ),
        .I1(\spo[0]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_43_n_0 ),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_19 
       (.I0(\spo[0]_INST_0_i_44_n_0 ),
        .I1(\spo[0]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_34_n_0 ),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  MUXF8 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h0401054110021006)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[0]_INST_0_i_21 
       (.I0(\spo[0]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_36_n_0 ),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_22 
       (.I0(\spo[0]_INST_0_i_19_n_0 ),
        .I1(\spo[0]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_23 
       (.I0(\spo[0]_INST_0_i_13_n_0 ),
        .I1(\spo[0]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_29_n_0 ),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_24 
       (.I0(\spo[0]_INST_0_i_28_n_0 ),
        .I1(\spo[0]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_12_n_0 ),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_25 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(\spo[0]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_26 
       (.I0(\spo[0]_INST_0_i_42_n_0 ),
        .I1(\spo[0]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_32_n_0 ),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_27 
       (.I0(\spo[0]_INST_0_i_33_n_0 ),
        .I1(\spo[0]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_36_n_0 ),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_28 
       (.I0(\spo[0]_INST_0_i_38_n_0 ),
        .I1(\spo[0]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_41_n_0 ),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_29 
       (.I0(\spo[0]_INST_0_i_43_n_0 ),
        .I1(\spo[0]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_33_n_0 ),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_11_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_30 
       (.I0(\spo[0]_INST_0_i_34_n_0 ),
        .I1(\spo[0]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_37_n_0 ),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_31 
       (.I0(\spo[0]_INST_0_i_37_n_0 ),
        .I1(\spo[0]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_45_n_0 ),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h40000012781B389C)) 
    \spo[0]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC0200802CD252D18)) 
    \spo[0]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0C010FC310821226)) 
    \spo[0]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h180000845A864223)) 
    \spo[0]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h30400284F0CC82A1)) 
    \spo[0]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h038F00B4008C24C5)) 
    \spo[0]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h021E8094082D2144)) 
    \spo[0]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hC0F0042410332168)) 
    \spo[0]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_12_n_0 ),
        .I1(\spo[0]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_15_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h84000041A7612339)) 
    \spo[0]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0024C2000C21F319)) 
    \spo[0]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h3F00040C0C114582)) 
    \spo[0]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2E1504048D081482)) 
    \spo[0]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h003F4408034C188A)) 
    \spo[0]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h84000040A7612338)) 
    \spo[0]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_16_n_0 ),
        .I1(\spo[0]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_19_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[8]),
        .I1(\spo[0]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_21_n_0 ),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  MUXF7 \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_22_n_0 ),
        .I1(\spo[0]_INST_0_i_23_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_24_n_0 ),
        .I1(\spo[0]_INST_0_i_25_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_9 
       (.I0(\spo[0]_INST_0_i_26_n_0 ),
        .I1(\spo[0]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_13_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  MUXF7 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(\^spo [10]),
        .S(a[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .I2(a[12]),
        .I3(\spo[10]_INST_0_i_5_n_0 ),
        .I4(a[11]),
        .I5(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_10 
       (.I0(\spo[10]_INST_0_i_28_n_0 ),
        .I1(\spo[6]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_30_n_0 ),
        .O(\spo[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_11 
       (.I0(\spo[7]_INST_0_i_18_n_0 ),
        .I1(\spo[10]_INST_0_i_31_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_32_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_33_n_0 ),
        .O(\spo[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_12 
       (.I0(\spo[10]_INST_0_i_25_n_0 ),
        .I1(\spo[10]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_28_n_0 ),
        .O(\spo[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_13 
       (.I0(\spo[10]_INST_0_i_19_n_0 ),
        .I1(\spo[10]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_18_n_0 ),
        .O(\spo[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_14 
       (.I0(\spo[10]_INST_0_i_33_n_0 ),
        .I1(\spo[10]_INST_0_i_29_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_34_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_35_n_0 ),
        .O(\spo[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_15 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(\spo[10]_INST_0_i_32_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_36_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_37_n_0 ),
        .O(\spo[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_16 
       (.I0(\spo[10]_INST_0_i_38_n_0 ),
        .I1(\spo[7]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_39_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_14_n_0 ),
        .O(\spo[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_17 
       (.I0(\spo[6]_INST_0_i_12_n_0 ),
        .I1(\spo[10]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0CFC0C0C0)) 
    \spo[10]_INST_0_i_18 
       (.I0(\spo[10]_INST_0_i_41_n_0 ),
        .I1(\spo[31]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[10]_INST_0_i_42_n_0 ),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00A0C000C000)) 
    \spo[10]_INST_0_i_19 
       (.I0(\spo[15]_INST_0_i_14_n_0 ),
        .I1(\spo[10]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[10]_INST_0_i_44_n_0 ),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_8_n_0 ),
        .I3(a[11]),
        .I4(\spo[10]_INST_0_i_9_n_0 ),
        .I5(a[12]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_20 
       (.I0(\spo[10]_INST_0_i_45_n_0 ),
        .I1(\spo[10]_INST_0_i_46_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_47_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_48_n_0 ),
        .O(\spo[10]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h03008080)) 
    \spo[10]_INST_0_i_21 
       (.I0(\spo[10]_INST_0_i_49_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .O(\spo[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_22 
       (.I0(\spo[10]_INST_0_i_50_n_0 ),
        .I1(\spo[31]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_51_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_52_n_0 ),
        .O(\spo[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_23 
       (.I0(\spo[10]_INST_0_i_53_n_0 ),
        .I1(\spo[10]_INST_0_i_54_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_55_n_0 ),
        .O(\spo[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA000A0000CFF0C00)) 
    \spo[10]_INST_0_i_24 
       (.I0(\spo[10]_INST_0_i_49_n_0 ),
        .I1(\spo[10]_INST_0_i_42_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[10]_INST_0_i_56_n_0 ),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000F000080008000)) 
    \spo[10]_INST_0_i_25 
       (.I0(\spo[10]_INST_0_i_57_n_0 ),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[10]_INST_0_i_49_n_0 ),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0154501705504156)) 
    \spo[10]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_27 
       (.I0(\spo[10]_INST_0_i_58_n_0 ),
        .I1(\spo[10]_INST_0_i_43_n_0 ),
        .I2(a[6]),
        .I3(\spo[10]_INST_0_i_59_n_0 ),
        .I4(a[5]),
        .I5(\spo[10]_INST_0_i_60_n_0 ),
        .O(\spo[10]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h40404040A0050000)) 
    \spo[10]_INST_0_i_28 
       (.I0(a[7]),
        .I1(\spo[10]_INST_0_i_49_n_0 ),
        .I2(a[6]),
        .I3(a[4]),
        .I4(\spo[10]_INST_0_i_57_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h4F400000)) 
    \spo[10]_INST_0_i_29 
       (.I0(a[5]),
        .I1(\spo[10]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .O(\spo[10]_INST_0_i_29_n_0 ));
  MUXF7 \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_10_n_0 ),
        .I1(\spo[10]_INST_0_i_11_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hC000000008083808)) 
    \spo[10]_INST_0_i_30 
       (.I0(\spo[10]_INST_0_i_49_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_57_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00BB008830003000)) 
    \spo[10]_INST_0_i_31 
       (.I0(\spo[10]_INST_0_i_42_n_0 ),
        .I1(a[7]),
        .I2(\spo[15]_INST_0_i_14_n_0 ),
        .I3(a[6]),
        .I4(\spo[10]_INST_0_i_43_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h3000300088338800)) 
    \spo[10]_INST_0_i_32 
       (.I0(\spo[10]_INST_0_i_49_n_0 ),
        .I1(a[7]),
        .I2(\spo[10]_INST_0_i_42_n_0 ),
        .I3(a[6]),
        .I4(\spo[15]_INST_0_i_14_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hA000A0000FC000C0)) 
    \spo[10]_INST_0_i_33 
       (.I0(\spo[10]_INST_0_i_43_n_0 ),
        .I1(\spo[10]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[10]_INST_0_i_49_n_0 ),
        .I5(a[6]),
        .O(\spo[10]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_34 
       (.I0(\spo[7]_INST_0_i_35_n_0 ),
        .I1(\spo[7]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_54_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_37_n_0 ),
        .O(\spo[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_35 
       (.I0(\spo[10]_INST_0_i_55_n_0 ),
        .I1(\spo[7]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_26_n_0 ),
        .O(\spo[10]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_36 
       (.I0(\spo[10]_INST_0_i_61_n_0 ),
        .I1(\spo[6]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_26_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_56_n_0 ),
        .O(\spo[10]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_37 
       (.I0(\spo[7]_INST_0_i_31_n_0 ),
        .I1(\spo[7]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_51_n_0 ),
        .O(\spo[10]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_38 
       (.I0(\spo[7]_INST_0_i_37_n_0 ),
        .I1(\spo[10]_INST_0_i_55_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_33_n_0 ),
        .O(\spo[10]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_39 
       (.I0(\spo[7]_INST_0_i_33_n_0 ),
        .I1(\spo[10]_INST_0_i_26_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_31_n_0 ),
        .O(\spo[10]_INST_0_i_39_n_0 ));
  MUXF7 \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_12_n_0 ),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_40 
       (.I0(\spo[10]_INST_0_i_51_n_0 ),
        .I1(\spo[7]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_54_n_0 ),
        .O(\spo[10]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAABA90414)) 
    \spo[10]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[10]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000001FE)) 
    \spo[10]_INST_0_i_42 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[10]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \spo[10]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[10]_INST_0_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01FE0000)) 
    \spo[10]_INST_0_i_44 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[10]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h1111111400000000)) 
    \spo[10]_INST_0_i_45 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[10]_INST_0_i_46 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8000000000000)) 
    \spo[10]_INST_0_i_47 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222228)) 
    \spo[10]_INST_0_i_48 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55540002)) 
    \spo[10]_INST_0_i_49 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .O(\spo[10]_INST_0_i_49_n_0 ));
  MUXF7 \spo[10]_INST_0_i_5 
       (.I0(\spo[10]_INST_0_i_14_n_0 ),
        .I1(\spo[10]_INST_0_i_15_n_0 ),
        .O(\spo[10]_INST_0_i_5_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h8989899898998D85)) 
    \spo[10]_INST_0_i_50 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h5450175604066024)) 
    \spo[10]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00000004CCCCCCCB)) 
    \spo[10]_INST_0_i_52 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[10]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h28222A823B93339D)) 
    \spo[10]_INST_0_i_53 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[10]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h9091908585D09451)) 
    \spo[10]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0455510E0AA2208A)) 
    \spo[10]_INST_0_i_55 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[10]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h4444444000000002)) 
    \spo[10]_INST_0_i_56 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[10]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \spo[10]_INST_0_i_57 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[10]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005557)) 
    \spo[10]_INST_0_i_58 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[10]_INST_0_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h45433C6D)) 
    \spo[10]_INST_0_i_59 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[10]_INST_0_i_59_n_0 ));
  MUXF7 \spo[10]_INST_0_i_6 
       (.I0(\spo[10]_INST_0_i_16_n_0 ),
        .I1(\spo[10]_INST_0_i_17_n_0 ),
        .O(\spo[10]_INST_0_i_6_n_0 ),
        .S(a[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h88008881)) 
    \spo[10]_INST_0_i_60 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[10]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h2222222800000000)) 
    \spo[10]_INST_0_i_61 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_7 
       (.I0(\spo[10]_INST_0_i_18_n_0 ),
        .I1(\spo[10]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_21_n_0 ),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_8 
       (.I0(\spo[10]_INST_0_i_22_n_0 ),
        .I1(\spo[10]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[10]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_25_n_0 ),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[10]_INST_0_i_9 
       (.I0(a[8]),
        .I1(\spo[10]_INST_0_i_26_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[10]_INST_0_i_27_n_0 ),
        .I5(a[10]),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  MUXF7 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(\^spo [11]),
        .S(a[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .I2(a[12]),
        .I3(\spo[11]_INST_0_i_5_n_0 ),
        .I4(a[11]),
        .I5(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_10 
       (.I0(\spo[11]_INST_0_i_30_n_0 ),
        .I1(\spo[11]_INST_0_i_31_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_20_n_0 ),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_11 
       (.I0(\spo[11]_INST_0_i_32_n_0 ),
        .I1(\spo[11]_INST_0_i_33_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_34_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_24_n_0 ),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_12 
       (.I0(\spo[11]_INST_0_i_27_n_0 ),
        .I1(\spo[11]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_33_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_30_n_0 ),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_13 
       (.I0(\spo[11]_INST_0_i_21_n_0 ),
        .I1(\spo[11]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_32_n_0 ),
        .O(\spo[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_14 
       (.I0(\spo[11]_INST_0_i_24_n_0 ),
        .I1(\spo[11]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_35_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_36_n_0 ),
        .O(\spo[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_15 
       (.I0(\spo[11]_INST_0_i_31_n_0 ),
        .I1(\spo[11]_INST_0_i_34_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_37_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_38_n_0 ),
        .O(\spo[11]_INST_0_i_15_n_0 ));
  MUXF7 \spo[11]_INST_0_i_16 
       (.I0(\spo[11]_INST_0_i_39_n_0 ),
        .I1(\spo[11]_INST_0_i_40_n_0 ),
        .O(\spo[11]_INST_0_i_16_n_0 ),
        .S(a[8]));
  MUXF7 \spo[11]_INST_0_i_17 
       (.I0(\spo[11]_INST_0_i_41_n_0 ),
        .I1(\spo[11]_INST_0_i_42_n_0 ),
        .O(\spo[11]_INST_0_i_17_n_0 ),
        .S(a[8]));
  MUXF7 \spo[11]_INST_0_i_18 
       (.I0(\spo[11]_INST_0_i_43_n_0 ),
        .I1(\spo[11]_INST_0_i_44_n_0 ),
        .O(\spo[11]_INST_0_i_18_n_0 ),
        .S(a[8]));
  MUXF7 \spo[11]_INST_0_i_19 
       (.I0(\spo[11]_INST_0_i_45_n_0 ),
        .I1(\spo[11]_INST_0_i_46_n_0 ),
        .O(\spo[11]_INST_0_i_19_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(a[9]),
        .I2(\spo[11]_INST_0_i_8_n_0 ),
        .I3(a[11]),
        .I4(\spo[11]_INST_0_i_9_n_0 ),
        .I5(a[12]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_20 
       (.I0(\spo[11]_INST_0_i_47_n_0 ),
        .I1(\spo[11]_INST_0_i_48_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_49_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_50_n_0 ),
        .O(\spo[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_21 
       (.I0(\spo[11]_INST_0_i_51_n_0 ),
        .I1(\spo[11]_INST_0_i_52_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_53_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_54_n_0 ),
        .O(\spo[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_22 
       (.I0(\spo[11]_INST_0_i_50_n_0 ),
        .I1(\spo[11]_INST_0_i_51_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_52_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_53_n_0 ),
        .O(\spo[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_23 
       (.I0(\spo[11]_INST_0_i_54_n_0 ),
        .I1(\spo[11]_INST_0_i_55_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_57_n_0 ),
        .O(\spo[11]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_24 
       (.I0(\spo[11]_INST_0_i_52_n_0 ),
        .I1(\spo[11]_INST_0_i_53_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_54_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_55_n_0 ),
        .O(\spo[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_25 
       (.I0(\spo[11]_INST_0_i_56_n_0 ),
        .I1(\spo[11]_INST_0_i_57_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_58_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_59_n_0 ),
        .O(\spo[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_26 
       (.I0(\spo[11]_INST_0_i_55_n_0 ),
        .I1(\spo[11]_INST_0_i_56_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_57_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_58_n_0 ),
        .O(\spo[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_27 
       (.I0(\spo[11]_INST_0_i_59_n_0 ),
        .I1(\spo[11]_INST_0_i_47_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_48_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_49_n_0 ),
        .O(\spo[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0455154455150177)) 
    \spo[11]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[11]_INST_0_i_29 
       (.I0(\spo[11]_INST_0_i_50_n_0 ),
        .I1(a[6]),
        .I2(\spo[11]_INST_0_i_51_n_0 ),
        .O(\spo[11]_INST_0_i_29_n_0 ));
  MUXF7 \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_10_n_0 ),
        .I1(\spo[11]_INST_0_i_11_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_30 
       (.I0(\spo[11]_INST_0_i_53_n_0 ),
        .I1(\spo[11]_INST_0_i_54_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_55_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_56_n_0 ),
        .O(\spo[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_31 
       (.I0(\spo[11]_INST_0_i_57_n_0 ),
        .I1(\spo[11]_INST_0_i_58_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_59_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_47_n_0 ),
        .O(\spo[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_32 
       (.I0(\spo[11]_INST_0_i_58_n_0 ),
        .I1(\spo[11]_INST_0_i_59_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_47_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_48_n_0 ),
        .O(\spo[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_33 
       (.I0(\spo[11]_INST_0_i_49_n_0 ),
        .I1(\spo[11]_INST_0_i_50_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_51_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_52_n_0 ),
        .O(\spo[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_34 
       (.I0(\spo[11]_INST_0_i_48_n_0 ),
        .I1(\spo[11]_INST_0_i_49_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_50_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_51_n_0 ),
        .O(\spo[11]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_35 
       (.I0(\spo[11]_INST_0_i_60_n_0 ),
        .I1(\spo[11]_INST_0_i_61_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_62_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_63_n_0 ),
        .O(\spo[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_36 
       (.I0(\spo[11]_INST_0_i_64_n_0 ),
        .I1(\spo[11]_INST_0_i_65_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_66_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_67_n_0 ),
        .O(\spo[11]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_37 
       (.I0(\spo[11]_INST_0_i_47_n_0 ),
        .I1(\spo[11]_INST_0_i_48_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_67_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_68_n_0 ),
        .O(\spo[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_38 
       (.I0(\spo[11]_INST_0_i_69_n_0 ),
        .I1(\spo[11]_INST_0_i_70_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_71_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_72_n_0 ),
        .O(\spo[11]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_39 
       (.I0(\spo[11]_INST_0_i_72_n_0 ),
        .I1(\spo[11]_INST_0_i_60_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_61_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_62_n_0 ),
        .O(\spo[11]_INST_0_i_39_n_0 ));
  MUXF7 \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_12_n_0 ),
        .I1(\spo[11]_INST_0_i_13_n_0 ),
        .O(\spo[11]_INST_0_i_4_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_40 
       (.I0(\spo[11]_INST_0_i_68_n_0 ),
        .I1(\spo[11]_INST_0_i_69_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_70_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_71_n_0 ),
        .O(\spo[11]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_41 
       (.I0(\spo[11]_INST_0_i_62_n_0 ),
        .I1(\spo[11]_INST_0_i_63_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_64_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_65_n_0 ),
        .O(\spo[11]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_42 
       (.I0(\spo[11]_INST_0_i_71_n_0 ),
        .I1(\spo[11]_INST_0_i_72_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_60_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_61_n_0 ),
        .O(\spo[11]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_43 
       (.I0(\spo[11]_INST_0_i_67_n_0 ),
        .I1(\spo[11]_INST_0_i_68_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_69_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_70_n_0 ),
        .O(\spo[11]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_44 
       (.I0(\spo[11]_INST_0_i_63_n_0 ),
        .I1(\spo[11]_INST_0_i_64_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_65_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_66_n_0 ),
        .O(\spo[11]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_45 
       (.I0(\spo[11]_INST_0_i_70_n_0 ),
        .I1(\spo[11]_INST_0_i_71_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_72_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_73_n_0 ),
        .O(\spo[11]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_46 
       (.I0(\spo[11]_INST_0_i_66_n_0 ),
        .I1(\spo[11]_INST_0_i_67_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_68_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_69_n_0 ),
        .O(\spo[11]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hA4632023E5E5323A)) 
    \spo[11]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAE886EAB539BDD3B)) 
    \spo[11]_INST_0_i_48 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h2C5D1D44779D8977)) 
    \spo[11]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_49_n_0 ));
  MUXF7 \spo[11]_INST_0_i_5 
       (.I0(\spo[11]_INST_0_i_14_n_0 ),
        .I1(\spo[11]_INST_0_i_15_n_0 ),
        .O(\spo[11]_INST_0_i_5_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h61DC40C47979C4C6)) 
    \spo[11]_INST_0_i_50 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h617C222E5B7BE4E6)) 
    \spo[11]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h49095A2D3B395BAD)) 
    \spo[11]_INST_0_i_52 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h59D33BDB80A9B1AD)) 
    \spo[11]_INST_0_i_53 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h58D39EDE44477175)) 
    \spo[11]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h1CA6042299EE4633)) 
    \spo[11]_INST_0_i_55 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h1AB6284ACEBEE86B)) 
    \spo[11]_INST_0_i_56 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h92BC919DA7B7D8D9)) 
    \spo[11]_INST_0_i_57 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h86A7BDA7049C1CDC)) 
    \spo[11]_INST_0_i_58 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h86E537E7421E725E)) 
    \spo[11]_INST_0_i_59 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_6 
       (.I0(\spo[11]_INST_0_i_16_n_0 ),
        .I1(\spo[11]_INST_0_i_17_n_0 ),
        .I2(a[9]),
        .I3(\spo[11]_INST_0_i_18_n_0 ),
        .I4(a[10]),
        .I5(\spo[11]_INST_0_i_19_n_0 ),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1904C9448C004C02)) 
    \spo[11]_INST_0_i_60 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h1104C34404004482)) 
    \spo[11]_INST_0_i_61 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h022200082C231888)) 
    \spo[11]_INST_0_i_62 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h022339230018189C)) 
    \spo[11]_INST_0_i_63 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h808131C100101214)) 
    \spo[11]_INST_0_i_64 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h8400CC0243024422)) 
    \spo[11]_INST_0_i_65 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h04420082444C0223)) 
    \spo[11]_INST_0_i_66 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h20280080C8388481)) 
    \spo[11]_INST_0_i_67 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h219C0084393984C4)) 
    \spo[11]_INST_0_i_68 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h011C002411130444)) 
    \spo[11]_INST_0_i_69 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_7 
       (.I0(\spo[11]_INST_0_i_20_n_0 ),
        .I1(\spo[11]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_23_n_0 ),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4000422032214228)) 
    \spo[11]_INST_0_i_70 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h402342C200212139)) 
    \spo[11]_INST_0_i_71 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0883888C00410111)) 
    \spo[11]_INST_0_i_72 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h189C0040C49C4043)) 
    \spo[11]_INST_0_i_73 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_24_n_0 ),
        .I1(\spo[11]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[11]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_27_n_0 ),
        .O(\spo[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[11]_INST_0_i_9 
       (.I0(a[8]),
        .I1(\spo[11]_INST_0_i_28_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[11]_INST_0_i_29_n_0 ),
        .I5(a[10]),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[12]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[12]_INST_0_i_3_n_0 ),
        .O(\^spo [12]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[12]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[12]_INST_0_i_5_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_6_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_10 
       (.I0(\spo[12]_INST_0_i_18_n_0 ),
        .I1(\spo[12]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_26_n_0 ),
        .O(\spo[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_11 
       (.I0(\spo[12]_INST_0_i_27_n_0 ),
        .I1(\spo[12]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_20_n_0 ),
        .O(\spo[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_12 
       (.I0(\spo[12]_INST_0_i_21_n_0 ),
        .I1(\spo[12]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_27_n_0 ),
        .O(\spo[12]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[12]_INST_0_i_13 
       (.I0(\spo[12]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_29_n_0 ),
        .O(\spo[12]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08100481)) 
    \spo[12]_INST_0_i_14 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_15 
       (.I0(\spo[12]_INST_0_i_30_n_0 ),
        .I1(\spo[12]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_33_n_0 ),
        .O(\spo[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_16 
       (.I0(\spo[12]_INST_0_i_34_n_0 ),
        .I1(\spo[12]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_37_n_0 ),
        .O(\spo[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_17 
       (.I0(\spo[12]_INST_0_i_33_n_0 ),
        .I1(\spo[12]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_36_n_0 ),
        .O(\spo[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_18 
       (.I0(\spo[12]_INST_0_i_37_n_0 ),
        .I1(\spo[12]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_40_n_0 ),
        .O(\spo[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_19 
       (.I0(\spo[12]_INST_0_i_38_n_0 ),
        .I1(\spo[12]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_28_n_0 ),
        .O(\spo[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_7_n_0 ),
        .I1(\spo[12]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[12]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_10_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_20 
       (.I0(\spo[12]_INST_0_i_29_n_0 ),
        .I1(\spo[12]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_32_n_0 ),
        .O(\spo[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_21 
       (.I0(\spo[12]_INST_0_i_28_n_0 ),
        .I1(\spo[12]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_31_n_0 ),
        .O(\spo[12]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_22 
       (.I0(\spo[12]_INST_0_i_32_n_0 ),
        .I1(\spo[12]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_35_n_0 ),
        .O(\spo[12]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_23 
       (.I0(\spo[12]_INST_0_i_36_n_0 ),
        .I1(\spo[12]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_39_n_0 ),
        .O(\spo[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_24 
       (.I0(\spo[12]_INST_0_i_40_n_0 ),
        .I1(\spo[12]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_30_n_0 ),
        .O(\spo[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_25 
       (.I0(\spo[12]_INST_0_i_39_n_0 ),
        .I1(\spo[12]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_29_n_0 ),
        .O(\spo[12]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_26 
       (.I0(\spo[12]_INST_0_i_31_n_0 ),
        .I1(\spo[12]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_34_n_0 ),
        .O(\spo[12]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_27 
       (.I0(\spo[12]_INST_0_i_35_n_0 ),
        .I1(\spo[12]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_38_n_0 ),
        .O(\spo[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8484001884211858)) 
    \spo[12]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h044400180C011250)) 
    \spo[12]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_11_n_0 ),
        .I1(\spo[12]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[12]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[12]_INST_0_i_7_n_0 ),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h202130400002020A)) 
    \spo[12]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h212129400082021A)) 
    \spo[12]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0103110800848290)) 
    \spo[12]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h4408418800040846)) 
    \spo[12]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4C02418000042046)) 
    \spo[12]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000022A8C820140)) 
    \spo[12]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h18981802002121A5)) 
    \spo[12]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1014308000214105)) 
    \spo[12]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0004048620213040)) 
    \spo[12]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0202220400484061)) 
    \spo[12]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[12]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80C0812000184809)) 
    \spo[12]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_5 
       (.I0(\spo[12]_INST_0_i_15_n_0 ),
        .I1(\spo[12]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_18_n_0 ),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_6 
       (.I0(\spo[12]_INST_0_i_19_n_0 ),
        .I1(\spo[12]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_22_n_0 ),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_7 
       (.I0(\spo[12]_INST_0_i_23_n_0 ),
        .I1(\spo[12]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_15_n_0 ),
        .O(\spo[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_8 
       (.I0(\spo[12]_INST_0_i_26_n_0 ),
        .I1(\spo[12]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_19_n_0 ),
        .O(\spo[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_9 
       (.I0(\spo[12]_INST_0_i_20_n_0 ),
        .I1(\spo[12]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[12]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_23_n_0 ),
        .O(\spo[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[13]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[13]_INST_0_i_3_n_0 ),
        .O(\^spo [13]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[13]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[13]_INST_0_i_5_n_0 ),
        .I4(a[9]),
        .I5(\spo[13]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_10 
       (.I0(\spo[13]_INST_0_i_18_n_0 ),
        .I1(\spo[13]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_26_n_0 ),
        .O(\spo[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_11 
       (.I0(\spo[13]_INST_0_i_27_n_0 ),
        .I1(\spo[13]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_20_n_0 ),
        .O(\spo[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_12 
       (.I0(\spo[13]_INST_0_i_21_n_0 ),
        .I1(\spo[13]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_27_n_0 ),
        .O(\spo[13]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[13]_INST_0_i_13 
       (.I0(\spo[13]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[13]_INST_0_i_29_n_0 ),
        .O(\spo[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40088021)) 
    \spo[13]_INST_0_i_14 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_15 
       (.I0(\spo[13]_INST_0_i_30_n_0 ),
        .I1(\spo[13]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_33_n_0 ),
        .O(\spo[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_16 
       (.I0(\spo[13]_INST_0_i_34_n_0 ),
        .I1(\spo[13]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_37_n_0 ),
        .O(\spo[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_17 
       (.I0(\spo[13]_INST_0_i_33_n_0 ),
        .I1(\spo[13]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_36_n_0 ),
        .O(\spo[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_18 
       (.I0(\spo[13]_INST_0_i_37_n_0 ),
        .I1(\spo[13]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_40_n_0 ),
        .O(\spo[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_19 
       (.I0(\spo[13]_INST_0_i_38_n_0 ),
        .I1(\spo[13]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_28_n_0 ),
        .O(\spo[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_7_n_0 ),
        .I1(\spo[13]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[13]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[13]_INST_0_i_10_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_20 
       (.I0(\spo[13]_INST_0_i_29_n_0 ),
        .I1(\spo[13]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_32_n_0 ),
        .O(\spo[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_21 
       (.I0(\spo[13]_INST_0_i_28_n_0 ),
        .I1(\spo[13]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_31_n_0 ),
        .O(\spo[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_22 
       (.I0(\spo[13]_INST_0_i_32_n_0 ),
        .I1(\spo[13]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_35_n_0 ),
        .O(\spo[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_23 
       (.I0(\spo[13]_INST_0_i_36_n_0 ),
        .I1(\spo[13]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_39_n_0 ),
        .O(\spo[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_24 
       (.I0(\spo[13]_INST_0_i_40_n_0 ),
        .I1(\spo[13]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_30_n_0 ),
        .O(\spo[13]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_25 
       (.I0(\spo[13]_INST_0_i_39_n_0 ),
        .I1(\spo[13]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_29_n_0 ),
        .O(\spo[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_26 
       (.I0(\spo[13]_INST_0_i_31_n_0 ),
        .I1(\spo[13]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_34_n_0 ),
        .O(\spo[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_27 
       (.I0(\spo[13]_INST_0_i_35_n_0 ),
        .I1(\spo[13]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[13]_INST_0_i_38_n_0 ),
        .O(\spo[13]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hA51800BD2100BDDC)) 
    \spo[13]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0710001D09201554)) 
    \spo[13]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_3 
       (.I0(\spo[13]_INST_0_i_11_n_0 ),
        .I1(\spo[13]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[13]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[13]_INST_0_i_7_n_0 ),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h600200725001622A)) 
    \spo[13]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE10240000063633B)) 
    \spo[13]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0D800A40008B8991)) 
    \spo[13]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h510D80DC880C40C6)) 
    \spo[13]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h790500D400044846)) 
    \spo[13]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0B00202E062A10A8)) 
    \spo[13]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h1A210200003B3BBD)) 
    \spo[13]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hD001A00200B19115)) 
    \spo[13]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h804C8C0660075602)) 
    \spo[13]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0E04408000464663)) 
    \spo[13]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[13]_INST_0_i_4 
       (.I0(\spo[13]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB00008E860A80489)) 
    \spo[13]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_5 
       (.I0(\spo[13]_INST_0_i_15_n_0 ),
        .I1(\spo[13]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_18_n_0 ),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_6 
       (.I0(\spo[13]_INST_0_i_19_n_0 ),
        .I1(\spo[13]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_22_n_0 ),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_7 
       (.I0(\spo[13]_INST_0_i_23_n_0 ),
        .I1(\spo[13]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_15_n_0 ),
        .O(\spo[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_8 
       (.I0(\spo[13]_INST_0_i_26_n_0 ),
        .I1(\spo[13]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_19_n_0 ),
        .O(\spo[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_9 
       (.I0(\spo[13]_INST_0_i_20_n_0 ),
        .I1(\spo[13]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[13]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_23_n_0 ),
        .O(\spo[13]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[14]_INST_0_i_3_n_0 ),
        .O(\^spo [14]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[14]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[14]_INST_0_i_5_n_0 ),
        .I4(a[9]),
        .I5(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_10 
       (.I0(\spo[14]_INST_0_i_18_n_0 ),
        .I1(\spo[14]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_26_n_0 ),
        .O(\spo[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_11 
       (.I0(\spo[14]_INST_0_i_27_n_0 ),
        .I1(\spo[14]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_20_n_0 ),
        .O(\spo[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_12 
       (.I0(\spo[14]_INST_0_i_21_n_0 ),
        .I1(\spo[14]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_27_n_0 ),
        .O(\spo[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[14]_INST_0_i_13 
       (.I0(\spo[14]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[14]_INST_0_i_29_n_0 ),
        .O(\spo[14]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h701887E0)) 
    \spo[14]_INST_0_i_14 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_15 
       (.I0(\spo[14]_INST_0_i_30_n_0 ),
        .I1(\spo[14]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_33_n_0 ),
        .O(\spo[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_16 
       (.I0(\spo[14]_INST_0_i_34_n_0 ),
        .I1(\spo[14]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_37_n_0 ),
        .O(\spo[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_17 
       (.I0(\spo[14]_INST_0_i_33_n_0 ),
        .I1(\spo[14]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_36_n_0 ),
        .O(\spo[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_18 
       (.I0(\spo[14]_INST_0_i_37_n_0 ),
        .I1(\spo[14]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_40_n_0 ),
        .O(\spo[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_19 
       (.I0(\spo[14]_INST_0_i_38_n_0 ),
        .I1(\spo[14]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_28_n_0 ),
        .O(\spo[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_7_n_0 ),
        .I1(\spo[14]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[14]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[14]_INST_0_i_10_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_20 
       (.I0(\spo[14]_INST_0_i_29_n_0 ),
        .I1(\spo[14]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_32_n_0 ),
        .O(\spo[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_21 
       (.I0(\spo[14]_INST_0_i_28_n_0 ),
        .I1(\spo[14]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_31_n_0 ),
        .O(\spo[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_22 
       (.I0(\spo[14]_INST_0_i_32_n_0 ),
        .I1(\spo[14]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_35_n_0 ),
        .O(\spo[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_23 
       (.I0(\spo[14]_INST_0_i_36_n_0 ),
        .I1(\spo[14]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_39_n_0 ),
        .O(\spo[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_24 
       (.I0(\spo[14]_INST_0_i_40_n_0 ),
        .I1(\spo[14]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_30_n_0 ),
        .O(\spo[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_25 
       (.I0(\spo[14]_INST_0_i_39_n_0 ),
        .I1(\spo[14]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_29_n_0 ),
        .O(\spo[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_26 
       (.I0(\spo[14]_INST_0_i_31_n_0 ),
        .I1(\spo[14]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_34_n_0 ),
        .O(\spo[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_27 
       (.I0(\spo[14]_INST_0_i_35_n_0 ),
        .I1(\spo[14]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_38_n_0 ),
        .O(\spo[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00002002B8215410)) 
    \spo[14]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h030A210259610A18)) 
    \spo[14]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_3 
       (.I0(\spo[14]_INST_0_i_11_n_0 ),
        .I1(\spo[14]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[14]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[14]_INST_0_i_7_n_0 ),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4010410052411012)) 
    \spo[14]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hC848668000002002)) 
    \spo[14]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00954020D2A8904A)) 
    \spo[14]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h191001088C800804)) 
    \spo[14]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h391AA12806800A04)) 
    \spo[14]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0326120505120124)) 
    \spo[14]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0088000020B22009)) 
    \spo[14]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hC8A6648202500061)) 
    \spo[14]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8080C80441405411)) 
    \spo[14]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h1821D69820200000)) 
    \spo[14]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[14]_INST_0_i_4 
       (.I0(\spo[14]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[14]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3500214062955408)) 
    \spo[14]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_5 
       (.I0(\spo[14]_INST_0_i_15_n_0 ),
        .I1(\spo[14]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_18_n_0 ),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_6 
       (.I0(\spo[14]_INST_0_i_19_n_0 ),
        .I1(\spo[14]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_22_n_0 ),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_7 
       (.I0(\spo[14]_INST_0_i_23_n_0 ),
        .I1(\spo[14]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_15_n_0 ),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_8 
       (.I0(\spo[14]_INST_0_i_26_n_0 ),
        .I1(\spo[14]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_19_n_0 ),
        .O(\spo[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_9 
       (.I0(\spo[14]_INST_0_i_20_n_0 ),
        .I1(\spo[14]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[14]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_23_n_0 ),
        .O(\spo[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[15]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[15]_INST_0_i_3_n_0 ),
        .O(\^spo [15]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[15]_INST_0_i_5_n_0 ),
        .I4(a[9]),
        .I5(\spo[15]_INST_0_i_6_n_0 ),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_10 
       (.I0(\spo[15]_INST_0_i_18_n_0 ),
        .I1(\spo[15]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_26_n_0 ),
        .O(\spo[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_11 
       (.I0(\spo[15]_INST_0_i_27_n_0 ),
        .I1(\spo[15]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_20_n_0 ),
        .O(\spo[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_12 
       (.I0(\spo[15]_INST_0_i_21_n_0 ),
        .I1(\spo[15]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_27_n_0 ),
        .O(\spo[15]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h88F0)) 
    \spo[15]_INST_0_i_13 
       (.I0(\spo[15]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[15]_INST_0_i_29_n_0 ),
        .I3(a[5]),
        .O(\spo[15]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[15]_INST_0_i_14 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_15 
       (.I0(\spo[15]_INST_0_i_30_n_0 ),
        .I1(\spo[15]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_33_n_0 ),
        .O(\spo[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_16 
       (.I0(\spo[15]_INST_0_i_34_n_0 ),
        .I1(\spo[15]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_37_n_0 ),
        .O(\spo[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_17 
       (.I0(\spo[15]_INST_0_i_33_n_0 ),
        .I1(\spo[15]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_36_n_0 ),
        .O(\spo[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_18 
       (.I0(\spo[15]_INST_0_i_37_n_0 ),
        .I1(\spo[15]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_40_n_0 ),
        .O(\spo[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_19 
       (.I0(\spo[15]_INST_0_i_38_n_0 ),
        .I1(\spo[15]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_41_n_0 ),
        .O(\spo[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_7_n_0 ),
        .I1(\spo[15]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[15]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[15]_INST_0_i_10_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_20 
       (.I0(\spo[15]_INST_0_i_42_n_0 ),
        .I1(\spo[15]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_32_n_0 ),
        .O(\spo[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_21 
       (.I0(\spo[15]_INST_0_i_41_n_0 ),
        .I1(\spo[15]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_31_n_0 ),
        .O(\spo[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_22 
       (.I0(\spo[15]_INST_0_i_32_n_0 ),
        .I1(\spo[15]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_35_n_0 ),
        .O(\spo[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_23 
       (.I0(\spo[15]_INST_0_i_36_n_0 ),
        .I1(\spo[15]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_39_n_0 ),
        .O(\spo[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_24 
       (.I0(\spo[15]_INST_0_i_40_n_0 ),
        .I1(\spo[15]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_30_n_0 ),
        .O(\spo[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_25 
       (.I0(\spo[15]_INST_0_i_39_n_0 ),
        .I1(\spo[15]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_42_n_0 ),
        .O(\spo[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_26 
       (.I0(\spo[15]_INST_0_i_31_n_0 ),
        .I1(\spo[15]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_27 
       (.I0(\spo[15]_INST_0_i_35_n_0 ),
        .I1(\spo[15]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_38_n_0 ),
        .O(\spo[15]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBA82A280)) 
    \spo[15]_INST_0_i_28 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .O(\spo[15]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6620706A)) 
    \spo[15]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_11_n_0 ),
        .I1(\spo[15]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[15]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[15]_INST_0_i_7_n_0 ),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00004002AA80A0A8)) 
    \spo[15]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h2363230021230039)) 
    \spo[15]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h88A0008000015451)) 
    \spo[15]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCD4CC0044C044002)) 
    \spo[15]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4544400444044002)) 
    \spo[15]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h01F9D84000000000)) 
    \spo[15]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h39183B393900009C)) 
    \spo[15]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1110911111000014)) 
    \spo[15]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h714010000002AA82)) 
    \spo[15]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h4246024242000023)) 
    \spo[15]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[15]_INST_0_i_4 
       (.I0(\spo[15]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[15]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA88AA08800800001)) 
    \spo[15]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h9C9C8400BD009CC4)) 
    \spo[15]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001F9D840)) 
    \spo[15]_INST_0_i_42 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_5 
       (.I0(\spo[15]_INST_0_i_15_n_0 ),
        .I1(\spo[15]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_18_n_0 ),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_6 
       (.I0(\spo[15]_INST_0_i_19_n_0 ),
        .I1(\spo[15]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_22_n_0 ),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_7 
       (.I0(\spo[15]_INST_0_i_23_n_0 ),
        .I1(\spo[15]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_15_n_0 ),
        .O(\spo[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_8 
       (.I0(\spo[15]_INST_0_i_26_n_0 ),
        .I1(\spo[15]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_19_n_0 ),
        .O(\spo[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_9 
       (.I0(\spo[15]_INST_0_i_20_n_0 ),
        .I1(\spo[15]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[15]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_23_n_0 ),
        .O(\spo[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[16]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[16]_INST_0_i_3_n_0 ),
        .O(\^spo [16]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[16]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[16]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_10 
       (.I0(\spo[16]_INST_0_i_14_n_0 ),
        .I1(\spo[16]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_26_n_0 ),
        .O(\spo[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_11 
       (.I0(\spo[16]_INST_0_i_29_n_0 ),
        .I1(\spo[16]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_31_n_0 ),
        .O(\spo[16]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_12 
       (.I0(\spo[16]_INST_0_i_32_n_0 ),
        .I1(\spo[16]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_35_n_0 ),
        .O(\spo[16]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_13 
       (.I0(\spo[16]_INST_0_i_36_n_0 ),
        .I1(\spo[16]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_39_n_0 ),
        .O(\spo[16]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_14 
       (.I0(\spo[16]_INST_0_i_35_n_0 ),
        .I1(\spo[16]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_38_n_0 ),
        .O(\spo[16]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_15 
       (.I0(\spo[16]_INST_0_i_39_n_0 ),
        .I1(\spo[16]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_42_n_0 ),
        .O(\spo[16]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_16 
       (.I0(\spo[16]_INST_0_i_37_n_0 ),
        .I1(\spo[16]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_40_n_0 ),
        .O(\spo[16]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_17 
       (.I0(\spo[16]_INST_0_i_41_n_0 ),
        .I1(\spo[16]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_44_n_0 ),
        .O(\spo[16]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_18 
       (.I0(\spo[16]_INST_0_i_40_n_0 ),
        .I1(\spo[16]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_43_n_0 ),
        .O(\spo[16]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_19 
       (.I0(\spo[16]_INST_0_i_44_n_0 ),
        .I1(\spo[16]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_34_n_0 ),
        .O(\spo[16]_INST_0_i_19_n_0 ));
  MUXF8 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_7_n_0 ),
        .I1(\spo[16]_INST_0_i_8_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h1540501401525005)) 
    \spo[16]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[16]_INST_0_i_21 
       (.I0(\spo[16]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[16]_INST_0_i_36_n_0 ),
        .O(\spo[16]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_22 
       (.I0(\spo[16]_INST_0_i_19_n_0 ),
        .I1(\spo[16]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_28_n_0 ),
        .O(\spo[16]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_23 
       (.I0(\spo[16]_INST_0_i_13_n_0 ),
        .I1(\spo[16]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_29_n_0 ),
        .O(\spo[16]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_24 
       (.I0(\spo[16]_INST_0_i_28_n_0 ),
        .I1(\spo[16]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_12_n_0 ),
        .O(\spo[16]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_25 
       (.I0(\spo[16]_INST_0_i_29_n_0 ),
        .I1(\spo[16]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_16_n_0 ),
        .O(\spo[16]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_26 
       (.I0(\spo[16]_INST_0_i_42_n_0 ),
        .I1(\spo[16]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_32_n_0 ),
        .O(\spo[16]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_27 
       (.I0(\spo[16]_INST_0_i_33_n_0 ),
        .I1(\spo[16]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_36_n_0 ),
        .O(\spo[16]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_28 
       (.I0(\spo[16]_INST_0_i_38_n_0 ),
        .I1(\spo[16]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_41_n_0 ),
        .O(\spo[16]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_29 
       (.I0(\spo[16]_INST_0_i_43_n_0 ),
        .I1(\spo[16]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_33_n_0 ),
        .O(\spo[16]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_3 
       (.I0(\spo[16]_INST_0_i_9_n_0 ),
        .I1(\spo[16]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[16]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[16]_INST_0_i_11_n_0 ),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_30 
       (.I0(\spo[16]_INST_0_i_34_n_0 ),
        .I1(\spo[16]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_37_n_0 ),
        .O(\spo[16]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_31 
       (.I0(\spo[16]_INST_0_i_37_n_0 ),
        .I1(\spo[16]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_45_n_0 ),
        .O(\spo[16]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8400BF79C55238EE)) 
    \spo[16]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hB8760802368DF55F)) 
    \spo[16]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3748F036095A5AAD)) 
    \spo[16]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h2100E75A399C42FF)) 
    \spo[16]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2360CF9A1B96A075)) 
    \spo[16]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4052F98E1126CEDB)) 
    \spo[16]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hCC02F1D40A83976F)) 
    \spo[16]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h48CE36F05A05AD69)) 
    \spo[16]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_4 
       (.I0(\spo[16]_INST_0_i_12_n_0 ),
        .I1(\spo[16]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_15_n_0 ),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h187B9C2300A7C5FE)) 
    \spo[16]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h30B68A44FA05359F)) 
    \spo[16]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h1310CFE52769D0BA)) 
    \spo[16]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0223DE44803965FF)) 
    \spo[16]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hC2E1FC0A06596997)) 
    \spo[16]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h18009CC47BA723FE)) 
    \spo[16]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_5 
       (.I0(\spo[16]_INST_0_i_16_n_0 ),
        .I1(\spo[16]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_19_n_0 ),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[8]),
        .I1(\spo[16]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[16]_INST_0_i_21_n_0 ),
        .I5(a[10]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  MUXF7 \spo[16]_INST_0_i_7 
       (.I0(\spo[16]_INST_0_i_22_n_0 ),
        .I1(\spo[16]_INST_0_i_23_n_0 ),
        .O(\spo[16]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[16]_INST_0_i_8 
       (.I0(\spo[16]_INST_0_i_24_n_0 ),
        .I1(\spo[16]_INST_0_i_25_n_0 ),
        .O(\spo[16]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_9 
       (.I0(\spo[16]_INST_0_i_26_n_0 ),
        .I1(\spo[16]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[16]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_13_n_0 ),
        .O(\spo[16]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[17]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[17]_INST_0_i_3_n_0 ),
        .O(\^spo [17]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[17]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[17]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_10 
       (.I0(\spo[17]_INST_0_i_14_n_0 ),
        .I1(\spo[17]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_26_n_0 ),
        .O(\spo[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_11 
       (.I0(\spo[17]_INST_0_i_29_n_0 ),
        .I1(\spo[17]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_31_n_0 ),
        .O(\spo[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_12 
       (.I0(\spo[17]_INST_0_i_32_n_0 ),
        .I1(\spo[17]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_35_n_0 ),
        .O(\spo[17]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_13 
       (.I0(\spo[17]_INST_0_i_36_n_0 ),
        .I1(\spo[17]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_39_n_0 ),
        .O(\spo[17]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_14 
       (.I0(\spo[17]_INST_0_i_35_n_0 ),
        .I1(\spo[17]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_38_n_0 ),
        .O(\spo[17]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_15 
       (.I0(\spo[17]_INST_0_i_39_n_0 ),
        .I1(\spo[17]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_42_n_0 ),
        .O(\spo[17]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_16 
       (.I0(\spo[17]_INST_0_i_37_n_0 ),
        .I1(\spo[17]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_40_n_0 ),
        .O(\spo[17]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_17 
       (.I0(\spo[17]_INST_0_i_41_n_0 ),
        .I1(\spo[17]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_44_n_0 ),
        .O(\spo[17]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_18 
       (.I0(\spo[17]_INST_0_i_40_n_0 ),
        .I1(\spo[17]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_43_n_0 ),
        .O(\spo[17]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_19 
       (.I0(\spo[17]_INST_0_i_44_n_0 ),
        .I1(\spo[17]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_34_n_0 ),
        .O(\spo[17]_INST_0_i_19_n_0 ));
  MUXF8 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_7_n_0 ),
        .I1(\spo[17]_INST_0_i_8_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[17]_INST_0_i_20 
       (.I0(\spo[17]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[17]_INST_0_i_36_n_0 ),
        .O(\spo[17]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0055414100535050)) 
    \spo[17]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_22 
       (.I0(\spo[17]_INST_0_i_19_n_0 ),
        .I1(\spo[17]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_28_n_0 ),
        .O(\spo[17]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_23 
       (.I0(\spo[17]_INST_0_i_13_n_0 ),
        .I1(\spo[17]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_29_n_0 ),
        .O(\spo[17]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_24 
       (.I0(\spo[17]_INST_0_i_28_n_0 ),
        .I1(\spo[17]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_12_n_0 ),
        .O(\spo[17]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_25 
       (.I0(\spo[17]_INST_0_i_29_n_0 ),
        .I1(\spo[17]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_16_n_0 ),
        .O(\spo[17]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_26 
       (.I0(\spo[17]_INST_0_i_42_n_0 ),
        .I1(\spo[17]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_32_n_0 ),
        .O(\spo[17]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_27 
       (.I0(\spo[17]_INST_0_i_33_n_0 ),
        .I1(\spo[17]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_36_n_0 ),
        .O(\spo[17]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_28 
       (.I0(\spo[17]_INST_0_i_38_n_0 ),
        .I1(\spo[17]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_41_n_0 ),
        .O(\spo[17]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_29 
       (.I0(\spo[17]_INST_0_i_43_n_0 ),
        .I1(\spo[17]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_33_n_0 ),
        .O(\spo[17]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_3 
       (.I0(\spo[17]_INST_0_i_9_n_0 ),
        .I1(\spo[17]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[17]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[17]_INST_0_i_11_n_0 ),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_30 
       (.I0(\spo[17]_INST_0_i_34_n_0 ),
        .I1(\spo[17]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_37_n_0 ),
        .O(\spo[17]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_31 
       (.I0(\spo[17]_INST_0_i_37_n_0 ),
        .I1(\spo[17]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_45_n_0 ),
        .O(\spo[17]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h778841114C15FCDF)) 
    \spo[17]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h5E675245380518CE)) 
    \spo[17]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0A5D496B0A5378F8)) 
    \spo[17]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hDA5A180018397BBF)) 
    \spo[17]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h94907ACA581BD91F)) 
    \spo[17]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8E138E1412DE52F2)) 
    \spo[17]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h36168A880AC25EE7)) 
    \spo[17]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAA98D3B8102E66AF)) 
    \spo[17]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_4 
       (.I0(\spo[17]_INST_0_i_12_n_0 ),
        .I1(\spo[17]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_15_n_0 ),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA784A79C84BF01FC)) 
    \spo[17]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h40AA55E28B9F6475)) 
    \spo[17]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE0E024273545E62F)) 
    \spo[17]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6A62AE87D153170B)) 
    \spo[17]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h1909676C25E1ADF1)) 
    \spo[17]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAA80774089BF4CFD)) 
    \spo[17]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_5 
       (.I0(\spo[17]_INST_0_i_16_n_0 ),
        .I1(\spo[17]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_19_n_0 ),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \spo[17]_INST_0_i_6 
       (.I0(\spo[17]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[17]_INST_0_i_21_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  MUXF7 \spo[17]_INST_0_i_7 
       (.I0(\spo[17]_INST_0_i_22_n_0 ),
        .I1(\spo[17]_INST_0_i_23_n_0 ),
        .O(\spo[17]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[17]_INST_0_i_8 
       (.I0(\spo[17]_INST_0_i_24_n_0 ),
        .I1(\spo[17]_INST_0_i_25_n_0 ),
        .O(\spo[17]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_9 
       (.I0(\spo[17]_INST_0_i_26_n_0 ),
        .I1(\spo[17]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[17]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_13_n_0 ),
        .O(\spo[17]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[18]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[18]_INST_0_i_3_n_0 ),
        .O(\^spo [18]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[18]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[18]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_10 
       (.I0(\spo[18]_INST_0_i_14_n_0 ),
        .I1(\spo[18]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_26_n_0 ),
        .O(\spo[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_11 
       (.I0(\spo[18]_INST_0_i_29_n_0 ),
        .I1(\spo[18]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_31_n_0 ),
        .O(\spo[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_12 
       (.I0(\spo[18]_INST_0_i_32_n_0 ),
        .I1(\spo[18]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_35_n_0 ),
        .O(\spo[18]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_13 
       (.I0(\spo[18]_INST_0_i_36_n_0 ),
        .I1(\spo[18]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_39_n_0 ),
        .O(\spo[18]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_14 
       (.I0(\spo[18]_INST_0_i_35_n_0 ),
        .I1(\spo[18]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_38_n_0 ),
        .O(\spo[18]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_15 
       (.I0(\spo[18]_INST_0_i_39_n_0 ),
        .I1(\spo[18]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_42_n_0 ),
        .O(\spo[18]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_16 
       (.I0(\spo[18]_INST_0_i_37_n_0 ),
        .I1(\spo[18]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_40_n_0 ),
        .O(\spo[18]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_17 
       (.I0(\spo[18]_INST_0_i_41_n_0 ),
        .I1(\spo[18]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_44_n_0 ),
        .O(\spo[18]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_18 
       (.I0(\spo[18]_INST_0_i_40_n_0 ),
        .I1(\spo[18]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_43_n_0 ),
        .O(\spo[18]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_19 
       (.I0(\spo[18]_INST_0_i_44_n_0 ),
        .I1(\spo[18]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_34_n_0 ),
        .O(\spo[18]_INST_0_i_19_n_0 ));
  MUXF8 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_7_n_0 ),
        .I1(\spo[18]_INST_0_i_8_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[18]_INST_0_i_20 
       (.I0(\spo[18]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[18]_INST_0_i_36_n_0 ),
        .O(\spo[18]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \spo[18]_INST_0_i_21 
       (.I0(\spo[18]_INST_0_i_45_n_0 ),
        .I1(a[5]),
        .I2(\spo[18]_INST_0_i_46_n_0 ),
        .I3(a[6]),
        .O(\spo[18]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_22 
       (.I0(\spo[18]_INST_0_i_19_n_0 ),
        .I1(\spo[18]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_28_n_0 ),
        .O(\spo[18]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_23 
       (.I0(\spo[18]_INST_0_i_13_n_0 ),
        .I1(\spo[18]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_29_n_0 ),
        .O(\spo[18]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_24 
       (.I0(\spo[18]_INST_0_i_28_n_0 ),
        .I1(\spo[18]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_12_n_0 ),
        .O(\spo[18]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_25 
       (.I0(\spo[18]_INST_0_i_29_n_0 ),
        .I1(\spo[18]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_16_n_0 ),
        .O(\spo[18]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_26 
       (.I0(\spo[18]_INST_0_i_42_n_0 ),
        .I1(\spo[18]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_32_n_0 ),
        .O(\spo[18]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_27 
       (.I0(\spo[18]_INST_0_i_33_n_0 ),
        .I1(\spo[18]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_36_n_0 ),
        .O(\spo[18]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_28 
       (.I0(\spo[18]_INST_0_i_38_n_0 ),
        .I1(\spo[18]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_41_n_0 ),
        .O(\spo[18]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_29 
       (.I0(\spo[18]_INST_0_i_43_n_0 ),
        .I1(\spo[18]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_33_n_0 ),
        .O(\spo[18]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_3 
       (.I0(\spo[18]_INST_0_i_9_n_0 ),
        .I1(\spo[18]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[18]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[18]_INST_0_i_11_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_30 
       (.I0(\spo[18]_INST_0_i_34_n_0 ),
        .I1(\spo[18]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_37_n_0 ),
        .O(\spo[18]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_31 
       (.I0(\spo[18]_INST_0_i_37_n_0 ),
        .I1(\spo[18]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_47_n_0 ),
        .O(\spo[18]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBCE6FDF5BCF5CE7F)) 
    \spo[18]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hB5F237D0D750D2DF)) 
    \spo[18]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hBBF6E6EE6C2CEACD)) 
    \spo[18]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h7A8FEF3F5FE5FDB7)) 
    \spo[18]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hA80F8F973F6DF5B5)) 
    \spo[18]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hEDFCFF73635356FB)) 
    \spo[18]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hD5F5E3427763427F)) 
    \spo[18]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h6ECBCADA2CFBCDAB)) 
    \spo[18]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_4 
       (.I0(\spo[18]_INST_0_i_12_n_0 ),
        .I1(\spo[18]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_15_n_0 ),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7DF979DFBCFDBCCE)) 
    \spo[18]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h3DFD799D9D1CC4CF)) 
    \spo[18]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hDBCFFE3E3B3666BE)) 
    \spo[18]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h556E73FB32B32F3F)) 
    \spo[18]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hCBFBAB83DAAB3937)) 
    \spo[18]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h5EAAA28B)) 
    \spo[18]_INST_0_i_45 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[18]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[18]_INST_0_i_46 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[18]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h7DF979DFBCFCBCCE)) 
    \spo[18]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_5 
       (.I0(\spo[18]_INST_0_i_16_n_0 ),
        .I1(\spo[18]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_19_n_0 ),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \spo[18]_INST_0_i_6 
       (.I0(\spo[18]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(\spo[18]_INST_0_i_21_n_0 ),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  MUXF7 \spo[18]_INST_0_i_7 
       (.I0(\spo[18]_INST_0_i_22_n_0 ),
        .I1(\spo[18]_INST_0_i_23_n_0 ),
        .O(\spo[18]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[18]_INST_0_i_8 
       (.I0(\spo[18]_INST_0_i_24_n_0 ),
        .I1(\spo[18]_INST_0_i_25_n_0 ),
        .O(\spo[18]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_9 
       (.I0(\spo[18]_INST_0_i_26_n_0 ),
        .I1(\spo[18]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[18]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_13_n_0 ),
        .O(\spo[18]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[19]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[19]_INST_0_i_3_n_0 ),
        .O(\^spo [19]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[19]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[19]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_10 
       (.I0(\spo[19]_INST_0_i_14_n_0 ),
        .I1(\spo[19]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_26_n_0 ),
        .O(\spo[19]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_11 
       (.I0(\spo[19]_INST_0_i_29_n_0 ),
        .I1(\spo[19]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_31_n_0 ),
        .O(\spo[19]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_12 
       (.I0(\spo[19]_INST_0_i_32_n_0 ),
        .I1(\spo[19]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_35_n_0 ),
        .O(\spo[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_13 
       (.I0(\spo[19]_INST_0_i_36_n_0 ),
        .I1(\spo[19]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_39_n_0 ),
        .O(\spo[19]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_14 
       (.I0(\spo[19]_INST_0_i_35_n_0 ),
        .I1(\spo[19]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_38_n_0 ),
        .O(\spo[19]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_15 
       (.I0(\spo[19]_INST_0_i_39_n_0 ),
        .I1(\spo[19]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_42_n_0 ),
        .O(\spo[19]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_16 
       (.I0(\spo[19]_INST_0_i_37_n_0 ),
        .I1(\spo[19]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_40_n_0 ),
        .O(\spo[19]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_17 
       (.I0(\spo[19]_INST_0_i_41_n_0 ),
        .I1(\spo[19]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_44_n_0 ),
        .O(\spo[19]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_18 
       (.I0(\spo[19]_INST_0_i_40_n_0 ),
        .I1(\spo[19]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_43_n_0 ),
        .O(\spo[19]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_19 
       (.I0(\spo[19]_INST_0_i_44_n_0 ),
        .I1(\spo[19]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_34_n_0 ),
        .O(\spo[19]_INST_0_i_19_n_0 ));
  MUXF8 \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_7_n_0 ),
        .I1(\spo[19]_INST_0_i_8_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[19]_INST_0_i_20 
       (.I0(\spo[19]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[19]_INST_0_i_36_n_0 ),
        .O(\spo[19]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[19]_INST_0_i_21 
       (.I0(\spo[19]_INST_0_i_45_n_0 ),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[19]_INST_0_i_46_n_0 ),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_22 
       (.I0(\spo[19]_INST_0_i_19_n_0 ),
        .I1(\spo[19]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_28_n_0 ),
        .O(\spo[19]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_23 
       (.I0(\spo[19]_INST_0_i_13_n_0 ),
        .I1(\spo[19]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_29_n_0 ),
        .O(\spo[19]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_24 
       (.I0(\spo[19]_INST_0_i_28_n_0 ),
        .I1(\spo[19]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_12_n_0 ),
        .O(\spo[19]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_25 
       (.I0(\spo[19]_INST_0_i_29_n_0 ),
        .I1(\spo[19]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_16_n_0 ),
        .O(\spo[19]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_26 
       (.I0(\spo[19]_INST_0_i_42_n_0 ),
        .I1(\spo[19]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_32_n_0 ),
        .O(\spo[19]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_27 
       (.I0(\spo[19]_INST_0_i_33_n_0 ),
        .I1(\spo[19]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_36_n_0 ),
        .O(\spo[19]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_28 
       (.I0(\spo[19]_INST_0_i_38_n_0 ),
        .I1(\spo[19]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_41_n_0 ),
        .O(\spo[19]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_29 
       (.I0(\spo[19]_INST_0_i_43_n_0 ),
        .I1(\spo[19]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_33_n_0 ),
        .O(\spo[19]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_3 
       (.I0(\spo[19]_INST_0_i_9_n_0 ),
        .I1(\spo[19]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[19]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[19]_INST_0_i_11_n_0 ),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_30 
       (.I0(\spo[19]_INST_0_i_34_n_0 ),
        .I1(\spo[19]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_37_n_0 ),
        .O(\spo[19]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_31 
       (.I0(\spo[19]_INST_0_i_37_n_0 ),
        .I1(\spo[19]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_47_n_0 ),
        .O(\spo[19]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4001441341300110)) 
    \spo[19]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCACEEAAAA0822800)) 
    \spo[19]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h045DDD4CD511C476)) 
    \spo[19]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h991000908C8000C0)) 
    \spo[19]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h73722E3A4E8AA2E2)) 
    \spo[19]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000101345CF5DD)) 
    \spo[19]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A882082808CB0)) 
    \spo[19]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hD4C7DC4616742764)) 
    \spo[19]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_4 
       (.I0(\spo[19]_INST_0_i_12_n_0 ),
        .I1(\spo[19]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_15_n_0 ),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0300050401005)) 
    \spo[19]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h7A8CFEAE22AA8820)) 
    \spo[19]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0F0D075510D57505)) 
    \spo[19]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h8820A008B80C5404)) 
    \spo[19]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h17622773734E624A)) 
    \spo[19]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2FFAF5AE)) 
    \spo[19]_INST_0_i_45 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .O(\spo[19]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[19]_INST_0_i_46 
       (.I0(a[1]),
        .I1(a[2]),
        .O(\spo[19]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h848400C4C4000001)) 
    \spo[19]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_5 
       (.I0(\spo[19]_INST_0_i_16_n_0 ),
        .I1(\spo[19]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_19_n_0 ),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \spo[19]_INST_0_i_6 
       (.I0(\spo[19]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(\spo[19]_INST_0_i_21_n_0 ),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  MUXF7 \spo[19]_INST_0_i_7 
       (.I0(\spo[19]_INST_0_i_22_n_0 ),
        .I1(\spo[19]_INST_0_i_23_n_0 ),
        .O(\spo[19]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[19]_INST_0_i_8 
       (.I0(\spo[19]_INST_0_i_24_n_0 ),
        .I1(\spo[19]_INST_0_i_25_n_0 ),
        .O(\spo[19]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_9 
       (.I0(\spo[19]_INST_0_i_26_n_0 ),
        .I1(\spo[19]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[19]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_13_n_0 ),
        .O(\spo[19]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[1]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[1]_INST_0_i_3_n_0 ),
        .O(\^spo [1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[1]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_14_n_0 ),
        .I1(\spo[1]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_26_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_29_n_0 ),
        .I1(\spo[1]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_32_n_0 ),
        .I1(\spo[1]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_35_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_36_n_0 ),
        .I1(\spo[1]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_39_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_35_n_0 ),
        .I1(\spo[1]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_38_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_15 
       (.I0(\spo[1]_INST_0_i_39_n_0 ),
        .I1(\spo[1]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_42_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_16 
       (.I0(\spo[1]_INST_0_i_37_n_0 ),
        .I1(\spo[1]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_40_n_0 ),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_17 
       (.I0(\spo[1]_INST_0_i_41_n_0 ),
        .I1(\spo[1]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_44_n_0 ),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_18 
       (.I0(\spo[1]_INST_0_i_40_n_0 ),
        .I1(\spo[1]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_43_n_0 ),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_19 
       (.I0(\spo[1]_INST_0_i_44_n_0 ),
        .I1(\spo[1]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_34_n_0 ),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  MUXF8 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(\spo[1]_INST_0_i_8_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h1141444015505313)) 
    \spo[1]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[1]_INST_0_i_21 
       (.I0(\spo[1]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_36_n_0 ),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_22 
       (.I0(\spo[1]_INST_0_i_19_n_0 ),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_28_n_0 ),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_23 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(\spo[1]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_29_n_0 ),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_24 
       (.I0(\spo[1]_INST_0_i_28_n_0 ),
        .I1(\spo[1]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_25 
       (.I0(\spo[1]_INST_0_i_29_n_0 ),
        .I1(\spo[1]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_16_n_0 ),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_26 
       (.I0(\spo[1]_INST_0_i_42_n_0 ),
        .I1(\spo[1]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_32_n_0 ),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_27 
       (.I0(\spo[1]_INST_0_i_33_n_0 ),
        .I1(\spo[1]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_36_n_0 ),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_28 
       (.I0(\spo[1]_INST_0_i_38_n_0 ),
        .I1(\spo[1]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_41_n_0 ),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_29 
       (.I0(\spo[1]_INST_0_i_43_n_0 ),
        .I1(\spo[1]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_9_n_0 ),
        .I1(\spo[1]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[1]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[1]_INST_0_i_11_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_30 
       (.I0(\spo[1]_INST_0_i_34_n_0 ),
        .I1(\spo[1]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_37_n_0 ),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_31 
       (.I0(\spo[1]_INST_0_i_37_n_0 ),
        .I1(\spo[1]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_45_n_0 ),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBE8500FFBD0313FE)) 
    \spo[1]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h3DF51082A28A377F)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hB36166C015FAD3BB)) 
    \spo[1]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE7216B8400F784FF)) 
    \spo[1]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC749B90C628FCED7)) 
    \spo[1]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hEC01DD3450FE30EE)) 
    \spo[1]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFD4888F55621A9FF)) 
    \spo[1]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h3D1A54AF6A0337BD)) 
    \spo[1]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_12_n_0 ),
        .I1(\spo[1]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_15_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7BBB184000417FFF)) 
    \spo[1]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h793D9C202EA2F717)) 
    \spo[1]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hCBD6060C114DEFEB)) 
    \spo[1]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hD6E6890881285FFF)) 
    \spo[1]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hDCA446F8AB307CDD)) 
    \spo[1]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h7B18BB40007F40FE)) 
    \spo[1]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_16_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_19_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[8]),
        .I1(\spo[1]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_21_n_0 ),
        .I5(a[10]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  MUXF7 \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_22_n_0 ),
        .I1(\spo[1]_INST_0_i_23_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_8 
       (.I0(\spo[1]_INST_0_i_24_n_0 ),
        .I1(\spo[1]_INST_0_i_25_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_26_n_0 ),
        .I1(\spo[1]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_13_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[20]_INST_0_i_3_n_0 ),
        .O(\^spo [20]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[20]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[20]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_10 
       (.I0(\spo[20]_INST_0_i_14_n_0 ),
        .I1(\spo[20]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_27_n_0 ),
        .O(\spo[20]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_11 
       (.I0(\spo[20]_INST_0_i_30_n_0 ),
        .I1(\spo[20]_INST_0_i_31_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_32_n_0 ),
        .O(\spo[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_12 
       (.I0(\spo[20]_INST_0_i_33_n_0 ),
        .I1(\spo[20]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_36_n_0 ),
        .O(\spo[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_13 
       (.I0(\spo[20]_INST_0_i_37_n_0 ),
        .I1(\spo[20]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_40_n_0 ),
        .O(\spo[20]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_14 
       (.I0(\spo[20]_INST_0_i_36_n_0 ),
        .I1(\spo[20]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_39_n_0 ),
        .O(\spo[20]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_15 
       (.I0(\spo[20]_INST_0_i_40_n_0 ),
        .I1(\spo[20]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_43_n_0 ),
        .O(\spo[20]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_16 
       (.I0(\spo[20]_INST_0_i_38_n_0 ),
        .I1(\spo[20]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_41_n_0 ),
        .O(\spo[20]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_17 
       (.I0(\spo[20]_INST_0_i_42_n_0 ),
        .I1(\spo[20]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_45_n_0 ),
        .O(\spo[20]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_18 
       (.I0(\spo[20]_INST_0_i_41_n_0 ),
        .I1(\spo[20]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_44_n_0 ),
        .O(\spo[20]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_19 
       (.I0(\spo[20]_INST_0_i_45_n_0 ),
        .I1(\spo[20]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_35_n_0 ),
        .O(\spo[20]_INST_0_i_19_n_0 ));
  MUXF8 \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_7_n_0 ),
        .I1(\spo[20]_INST_0_i_8_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[20]_INST_0_i_20 
       (.I0(\spo[20]_INST_0_i_36_n_0 ),
        .I1(a[6]),
        .I2(\spo[20]_INST_0_i_37_n_0 ),
        .O(\spo[20]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB00303C0)) 
    \spo[20]_INST_0_i_21 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[20]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \spo[20]_INST_0_i_22 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(a[9]),
        .O(\spo[20]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_23 
       (.I0(\spo[20]_INST_0_i_19_n_0 ),
        .I1(\spo[20]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_29_n_0 ),
        .O(\spo[20]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_24 
       (.I0(\spo[20]_INST_0_i_13_n_0 ),
        .I1(\spo[20]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_30_n_0 ),
        .O(\spo[20]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_25 
       (.I0(\spo[20]_INST_0_i_29_n_0 ),
        .I1(\spo[20]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_12_n_0 ),
        .O(\spo[20]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_26 
       (.I0(\spo[20]_INST_0_i_30_n_0 ),
        .I1(\spo[20]_INST_0_i_31_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_16_n_0 ),
        .O(\spo[20]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_27 
       (.I0(\spo[20]_INST_0_i_43_n_0 ),
        .I1(\spo[20]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_45_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_33_n_0 ),
        .O(\spo[20]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_28 
       (.I0(\spo[20]_INST_0_i_34_n_0 ),
        .I1(\spo[20]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_37_n_0 ),
        .O(\spo[20]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_29 
       (.I0(\spo[20]_INST_0_i_39_n_0 ),
        .I1(\spo[20]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_42_n_0 ),
        .O(\spo[20]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_3 
       (.I0(\spo[20]_INST_0_i_9_n_0 ),
        .I1(\spo[20]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[20]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[20]_INST_0_i_11_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_30 
       (.I0(\spo[20]_INST_0_i_44_n_0 ),
        .I1(\spo[20]_INST_0_i_45_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_34_n_0 ),
        .O(\spo[20]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_31 
       (.I0(\spo[20]_INST_0_i_35_n_0 ),
        .I1(\spo[20]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_38_n_0 ),
        .O(\spo[20]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_32 
       (.I0(\spo[20]_INST_0_i_38_n_0 ),
        .I1(\spo[20]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_46_n_0 ),
        .O(\spo[20]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF3D87B8CBECFFCED)) 
    \spo[20]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5D59313535775754)) 
    \spo[20]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4DAA2A2F020FDAA0)) 
    \spo[20]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h74B256A36F3FF3FB)) 
    \spo[20]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h9CB09C21C11DD159)) 
    \spo[20]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hEFBFFEFC4309828A)) 
    \spo[20]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hD6961C5C5C7F7746)) 
    \spo[20]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_4 
       (.I0(\spo[20]_INST_0_i_12_n_0 ),
        .I1(\spo[20]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_15_n_0 ),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAE43B89330888BA)) 
    \spo[20]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBAF7233B3FBFFBEC)) 
    \spo[20]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hB10D251953355735)) 
    \spo[20]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[20]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFAF2F08A4D2A02DA)) 
    \spo[20]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[20]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h6C746C56C76FF6F3)) 
    \spo[20]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hE09C489C8BC19AD1)) 
    \spo[20]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hB32FAF3BFB3F7FBD)) 
    \spo[20]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[20]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_5 
       (.I0(\spo[20]_INST_0_i_16_n_0 ),
        .I1(\spo[20]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_19_n_0 ),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222E2222)) 
    \spo[20]_INST_0_i_6 
       (.I0(\spo[20]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[20]_INST_0_i_21_n_0 ),
        .I5(\spo[20]_INST_0_i_22_n_0 ),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  MUXF7 \spo[20]_INST_0_i_7 
       (.I0(\spo[20]_INST_0_i_23_n_0 ),
        .I1(\spo[20]_INST_0_i_24_n_0 ),
        .O(\spo[20]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[20]_INST_0_i_8 
       (.I0(\spo[20]_INST_0_i_25_n_0 ),
        .I1(\spo[20]_INST_0_i_26_n_0 ),
        .O(\spo[20]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_9 
       (.I0(\spo[20]_INST_0_i_27_n_0 ),
        .I1(\spo[20]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[20]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_13_n_0 ),
        .O(\spo[20]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[21]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[21]_INST_0_i_3_n_0 ),
        .O(\^spo [21]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[21]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[21]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_10 
       (.I0(\spo[21]_INST_0_i_20_n_0 ),
        .I1(\spo[21]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_26_n_0 ),
        .O(\spo[21]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_11 
       (.I0(\spo[21]_INST_0_i_27_n_0 ),
        .I1(\spo[21]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_13_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_14_n_0 ),
        .O(\spo[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_12 
       (.I0(\spo[21]_INST_0_i_15_n_0 ),
        .I1(\spo[21]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_27_n_0 ),
        .O(\spo[21]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_13 
       (.I0(\spo[21]_INST_0_i_28_n_0 ),
        .I1(\spo[21]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_31_n_0 ),
        .O(\spo[21]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_14 
       (.I0(\spo[21]_INST_0_i_32_n_0 ),
        .I1(\spo[21]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_35_n_0 ),
        .O(\spo[21]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_15 
       (.I0(\spo[21]_INST_0_i_31_n_0 ),
        .I1(\spo[21]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_34_n_0 ),
        .O(\spo[21]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_16 
       (.I0(\spo[21]_INST_0_i_35_n_0 ),
        .I1(\spo[21]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_38_n_0 ),
        .O(\spo[21]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_17 
       (.I0(\spo[21]_INST_0_i_33_n_0 ),
        .I1(\spo[21]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_36_n_0 ),
        .O(\spo[21]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_18 
       (.I0(\spo[21]_INST_0_i_37_n_0 ),
        .I1(\spo[21]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_40_n_0 ),
        .O(\spo[21]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_19 
       (.I0(\spo[21]_INST_0_i_36_n_0 ),
        .I1(\spo[21]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_39_n_0 ),
        .O(\spo[21]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_7_n_0 ),
        .I1(\spo[21]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[21]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[21]_INST_0_i_10_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_20 
       (.I0(\spo[21]_INST_0_i_40_n_0 ),
        .I1(\spo[21]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_30_n_0 ),
        .O(\spo[21]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \spo[21]_INST_0_i_21 
       (.I0(\spo[21]_INST_0_i_41_n_0 ),
        .I1(a[6]),
        .I2(a[5]),
        .O(\spo[21]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[21]_INST_0_i_22 
       (.I0(\spo[21]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[21]_INST_0_i_32_n_0 ),
        .O(\spo[21]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_23 
       (.I0(\spo[21]_INST_0_i_39_n_0 ),
        .I1(\spo[21]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_29_n_0 ),
        .O(\spo[21]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_24 
       (.I0(\spo[21]_INST_0_i_30_n_0 ),
        .I1(\spo[21]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_33_n_0 ),
        .O(\spo[21]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_25 
       (.I0(\spo[21]_INST_0_i_29_n_0 ),
        .I1(\spo[21]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_32_n_0 ),
        .O(\spo[21]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_26 
       (.I0(\spo[21]_INST_0_i_34_n_0 ),
        .I1(\spo[21]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_37_n_0 ),
        .O(\spo[21]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_27 
       (.I0(\spo[21]_INST_0_i_38_n_0 ),
        .I1(\spo[21]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_28_n_0 ),
        .O(\spo[21]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8404444460301000)) 
    \spo[21]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1155402800022000)) 
    \spo[21]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[21]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_11_n_0 ),
        .I1(\spo[21]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[21]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[21]_INST_0_i_7_n_0 ),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA008C01848180809)) 
    \spo[21]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h2518041898181818)) 
    \spo[21]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h011008121C121050)) 
    \spo[21]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6030100002022222)) 
    \spo[21]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h40082080050A0A2A)) 
    \spo[21]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0880028483848090)) 
    \spo[21]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5884408484848484)) 
    \spo[21]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h10C4800404242406)) 
    \spo[21]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h02022222A0C14100)) 
    \spo[21]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h000408003CCC8333)) 
    \spo[21]_INST_0_i_39 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[21]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_13_n_0 ),
        .I1(\spo[21]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_16_n_0 ),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8200041130114015)) 
    \spo[21]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00848401)) 
    \spo[21]_INST_0_i_41 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[21]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_5 
       (.I0(\spo[21]_INST_0_i_17_n_0 ),
        .I1(\spo[21]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_20_n_0 ),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(\spo[21]_INST_0_i_21_n_0 ),
        .I3(a[7]),
        .I4(\spo[21]_INST_0_i_22_n_0 ),
        .I5(a[9]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_7 
       (.I0(\spo[21]_INST_0_i_23_n_0 ),
        .I1(\spo[21]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_17_n_0 ),
        .O(\spo[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_8 
       (.I0(\spo[21]_INST_0_i_26_n_0 ),
        .I1(\spo[21]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_13_n_0 ),
        .O(\spo[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_9 
       (.I0(\spo[21]_INST_0_i_14_n_0 ),
        .I1(\spo[21]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[21]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_23_n_0 ),
        .O(\spo[21]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[22]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[22]_INST_0_i_3_n_0 ),
        .O(\^spo [22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_4_n_0 ),
        .I1(a[11]),
        .I2(\spo[22]_INST_0_i_5_n_0 ),
        .I3(a[9]),
        .I4(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_10 
       (.I0(\spo[22]_INST_0_i_19_n_0 ),
        .I1(\spo[22]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_27_n_0 ),
        .O(\spo[22]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_11 
       (.I0(\spo[22]_INST_0_i_28_n_0 ),
        .I1(\spo[22]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_21_n_0 ),
        .O(\spo[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_12 
       (.I0(\spo[22]_INST_0_i_22_n_0 ),
        .I1(\spo[22]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_28_n_0 ),
        .O(\spo[22]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[22]_INST_0_i_13 
       (.I0(\spo[22]_INST_0_i_29_n_0 ),
        .I1(a[6]),
        .I2(\spo[22]_INST_0_i_30_n_0 ),
        .O(\spo[22]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h201085E0)) 
    \spo[22]_INST_0_i_14 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[22]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spo[22]_INST_0_i_15 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(a[9]),
        .O(\spo[22]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_16 
       (.I0(\spo[22]_INST_0_i_31_n_0 ),
        .I1(\spo[22]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_34_n_0 ),
        .O(\spo[22]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_17 
       (.I0(\spo[22]_INST_0_i_35_n_0 ),
        .I1(\spo[22]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_38_n_0 ),
        .O(\spo[22]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_18 
       (.I0(\spo[22]_INST_0_i_34_n_0 ),
        .I1(\spo[22]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_37_n_0 ),
        .O(\spo[22]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_19 
       (.I0(\spo[22]_INST_0_i_38_n_0 ),
        .I1(\spo[22]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_41_n_0 ),
        .O(\spo[22]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_7_n_0 ),
        .I1(\spo[22]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[22]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[22]_INST_0_i_10_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_20 
       (.I0(\spo[22]_INST_0_i_39_n_0 ),
        .I1(\spo[22]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_29_n_0 ),
        .O(\spo[22]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_21 
       (.I0(\spo[22]_INST_0_i_30_n_0 ),
        .I1(\spo[22]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_33_n_0 ),
        .O(\spo[22]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_22 
       (.I0(\spo[22]_INST_0_i_29_n_0 ),
        .I1(\spo[22]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_32_n_0 ),
        .O(\spo[22]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_23 
       (.I0(\spo[22]_INST_0_i_33_n_0 ),
        .I1(\spo[22]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_36_n_0 ),
        .O(\spo[22]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_24 
       (.I0(\spo[22]_INST_0_i_37_n_0 ),
        .I1(\spo[22]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_40_n_0 ),
        .O(\spo[22]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_25 
       (.I0(\spo[22]_INST_0_i_41_n_0 ),
        .I1(\spo[22]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_31_n_0 ),
        .O(\spo[22]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_26 
       (.I0(\spo[22]_INST_0_i_40_n_0 ),
        .I1(\spo[22]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_30_n_0 ),
        .O(\spo[22]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_27 
       (.I0(\spo[22]_INST_0_i_32_n_0 ),
        .I1(\spo[22]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_35_n_0 ),
        .O(\spo[22]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_28 
       (.I0(\spo[22]_INST_0_i_36_n_0 ),
        .I1(\spo[22]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_39_n_0 ),
        .O(\spo[22]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00980000042139DC)) 
    \spo[22]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_11_n_0 ),
        .I1(\spo[22]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[22]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[22]_INST_0_i_7_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h005C000A0841131C)) 
    \spo[22]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h030414130002200A)) 
    \spo[22]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h02080A0004C31823)) 
    \spo[22]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00029318008C0683)) 
    \spo[22]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h08000400419C08C6)) 
    \spo[22]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0C0A0600813C0244)) 
    \spo[22]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0020020A0045C32C)) 
    \spo[22]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00A910820000233D)) 
    \spo[22]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h003520840060C131)) 
    \spo[22]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h000C480603041413)) 
    \spo[22]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[22]_INST_0_i_4 
       (.I0(\spo[22]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[22]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .I5(\spo[22]_INST_0_i_15_n_0 ),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00006224004C0843)) 
    \spo[22]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0C00030842915C08)) 
    \spo[22]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_5 
       (.I0(\spo[22]_INST_0_i_16_n_0 ),
        .I1(\spo[22]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_19_n_0 ),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_6 
       (.I0(\spo[22]_INST_0_i_20_n_0 ),
        .I1(\spo[22]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_23_n_0 ),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_7 
       (.I0(\spo[22]_INST_0_i_24_n_0 ),
        .I1(\spo[22]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_16_n_0 ),
        .O(\spo[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_8 
       (.I0(\spo[22]_INST_0_i_27_n_0 ),
        .I1(\spo[22]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_20_n_0 ),
        .O(\spo[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_9 
       (.I0(\spo[22]_INST_0_i_21_n_0 ),
        .I1(\spo[22]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[22]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_24_n_0 ),
        .O(\spo[22]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[23]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[23]_INST_0_i_3_n_0 ),
        .O(\^spo [23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_4_n_0 ),
        .I1(a[11]),
        .I2(\spo[23]_INST_0_i_5_n_0 ),
        .I3(a[9]),
        .I4(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_10 
       (.I0(\spo[23]_INST_0_i_18_n_0 ),
        .I1(\spo[23]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_26_n_0 ),
        .O(\spo[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_11 
       (.I0(\spo[23]_INST_0_i_27_n_0 ),
        .I1(\spo[23]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_20_n_0 ),
        .O(\spo[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_12 
       (.I0(\spo[23]_INST_0_i_21_n_0 ),
        .I1(\spo[23]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_27_n_0 ),
        .O(\spo[23]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[23]_INST_0_i_13 
       (.I0(\spo[23]_INST_0_i_28_n_0 ),
        .I1(a[6]),
        .I2(\spo[23]_INST_0_i_29_n_0 ),
        .O(\spo[23]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \spo[23]_INST_0_i_14 
       (.I0(a[5]),
        .I1(\spo[23]_INST_0_i_30_n_0 ),
        .I2(a[4]),
        .I3(\spo[30]_INST_0_i_34_n_0 ),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_15 
       (.I0(\spo[23]_INST_0_i_31_n_0 ),
        .I1(\spo[23]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_34_n_0 ),
        .O(\spo[23]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_16 
       (.I0(\spo[23]_INST_0_i_35_n_0 ),
        .I1(\spo[23]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_38_n_0 ),
        .O(\spo[23]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_17 
       (.I0(\spo[23]_INST_0_i_34_n_0 ),
        .I1(\spo[23]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_37_n_0 ),
        .O(\spo[23]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_18 
       (.I0(\spo[23]_INST_0_i_38_n_0 ),
        .I1(\spo[23]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_41_n_0 ),
        .O(\spo[23]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_19 
       (.I0(\spo[23]_INST_0_i_39_n_0 ),
        .I1(\spo[23]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_28_n_0 ),
        .O(\spo[23]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(\spo[23]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[23]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[23]_INST_0_i_10_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_20 
       (.I0(\spo[23]_INST_0_i_29_n_0 ),
        .I1(\spo[23]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_33_n_0 ),
        .O(\spo[23]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_21 
       (.I0(\spo[23]_INST_0_i_28_n_0 ),
        .I1(\spo[23]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_32_n_0 ),
        .O(\spo[23]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_22 
       (.I0(\spo[23]_INST_0_i_33_n_0 ),
        .I1(\spo[23]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_36_n_0 ),
        .O(\spo[23]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_23 
       (.I0(\spo[23]_INST_0_i_37_n_0 ),
        .I1(\spo[23]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_40_n_0 ),
        .O(\spo[23]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_24 
       (.I0(\spo[23]_INST_0_i_41_n_0 ),
        .I1(\spo[23]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_31_n_0 ),
        .O(\spo[23]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_25 
       (.I0(\spo[23]_INST_0_i_40_n_0 ),
        .I1(\spo[23]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_29_n_0 ),
        .O(\spo[23]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_26 
       (.I0(\spo[23]_INST_0_i_32_n_0 ),
        .I1(\spo[23]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_35_n_0 ),
        .O(\spo[23]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_27 
       (.I0(\spo[23]_INST_0_i_36_n_0 ),
        .I1(\spo[23]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[23]_INST_0_i_39_n_0 ),
        .O(\spo[23]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8309211810800804)) 
    \spo[23]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h016903B03008000C)) 
    \spo[23]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_3 
       (.I0(\spo[23]_INST_0_i_11_n_0 ),
        .I1(\spo[23]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[23]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[23]_INST_0_i_7_n_0 ),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h249A)) 
    \spo[23]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[23]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0050030052031030)) 
    \spo[23]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0420202000021)) 
    \spo[23]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0C8000C050A2E003)) 
    \spo[23]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0890108404C08040)) 
    \spo[23]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6098B00C0C4000C0)) 
    \spo[23]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h001723603000004C)) 
    \spo[23]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00800002201889C4)) 
    \spo[23]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5A020130E0030300)) 
    \spo[23]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0840C40005005013)) 
    \spo[23]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \spo[23]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(\spo[23]_INST_0_i_14_n_0 ),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h308C4C4000800002)) 
    \spo[23]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h1700487000C0B000)) 
    \spo[23]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_5 
       (.I0(\spo[23]_INST_0_i_15_n_0 ),
        .I1(\spo[23]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_18_n_0 ),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_6 
       (.I0(\spo[23]_INST_0_i_19_n_0 ),
        .I1(\spo[23]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_22_n_0 ),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_7 
       (.I0(\spo[23]_INST_0_i_23_n_0 ),
        .I1(\spo[23]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_15_n_0 ),
        .O(\spo[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_8 
       (.I0(\spo[23]_INST_0_i_26_n_0 ),
        .I1(\spo[23]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_19_n_0 ),
        .O(\spo[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_9 
       (.I0(\spo[23]_INST_0_i_20_n_0 ),
        .I1(\spo[23]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[23]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_23_n_0 ),
        .O(\spo[23]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[24]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[24]_INST_0_i_3_n_0 ),
        .O(\^spo [24]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[24]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[24]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_10 
       (.I0(\spo[24]_INST_0_i_20_n_0 ),
        .I1(\spo[24]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_26_n_0 ),
        .O(\spo[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_11 
       (.I0(\spo[24]_INST_0_i_27_n_0 ),
        .I1(\spo[24]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_13_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_14_n_0 ),
        .O(\spo[24]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_12 
       (.I0(\spo[24]_INST_0_i_15_n_0 ),
        .I1(\spo[24]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_27_n_0 ),
        .O(\spo[24]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_13 
       (.I0(\spo[24]_INST_0_i_28_n_0 ),
        .I1(\spo[24]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_31_n_0 ),
        .O(\spo[24]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_14 
       (.I0(\spo[24]_INST_0_i_32_n_0 ),
        .I1(\spo[24]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_35_n_0 ),
        .O(\spo[24]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_15 
       (.I0(\spo[24]_INST_0_i_31_n_0 ),
        .I1(\spo[24]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_34_n_0 ),
        .O(\spo[24]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_16 
       (.I0(\spo[24]_INST_0_i_35_n_0 ),
        .I1(\spo[24]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_38_n_0 ),
        .O(\spo[24]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_17 
       (.I0(\spo[24]_INST_0_i_33_n_0 ),
        .I1(\spo[24]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_36_n_0 ),
        .O(\spo[24]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_18 
       (.I0(\spo[24]_INST_0_i_37_n_0 ),
        .I1(\spo[24]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_40_n_0 ),
        .O(\spo[24]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_19 
       (.I0(\spo[24]_INST_0_i_36_n_0 ),
        .I1(\spo[24]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_39_n_0 ),
        .O(\spo[24]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_7_n_0 ),
        .I1(\spo[24]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[24]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[24]_INST_0_i_10_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_20 
       (.I0(\spo[24]_INST_0_i_40_n_0 ),
        .I1(\spo[24]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_30_n_0 ),
        .O(\spo[24]_INST_0_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \spo[24]_INST_0_i_21 
       (.I0(\spo[24]_INST_0_i_41_n_0 ),
        .I1(a[6]),
        .I2(a[5]),
        .O(\spo[24]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[24]_INST_0_i_22 
       (.I0(\spo[24]_INST_0_i_31_n_0 ),
        .I1(a[6]),
        .I2(\spo[24]_INST_0_i_32_n_0 ),
        .O(\spo[24]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_23 
       (.I0(\spo[24]_INST_0_i_39_n_0 ),
        .I1(\spo[24]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_29_n_0 ),
        .O(\spo[24]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_24 
       (.I0(\spo[24]_INST_0_i_30_n_0 ),
        .I1(\spo[24]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_33_n_0 ),
        .O(\spo[24]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_25 
       (.I0(\spo[24]_INST_0_i_29_n_0 ),
        .I1(\spo[24]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_32_n_0 ),
        .O(\spo[24]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_26 
       (.I0(\spo[24]_INST_0_i_34_n_0 ),
        .I1(\spo[24]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_37_n_0 ),
        .O(\spo[24]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_27 
       (.I0(\spo[24]_INST_0_i_38_n_0 ),
        .I1(\spo[24]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_28_n_0 ),
        .O(\spo[24]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h004010020A080A05)) 
    \spo[24]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h080A226242000021)) 
    \spo[24]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_11_n_0 ),
        .I1(\spo[24]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[24]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[24]_INST_0_i_7_n_0 ),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9801848098090401)) 
    \spo[24]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0890890444C04C00)) 
    \spo[24]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0410050424486408)) 
    \spo[24]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00000004C0C48830)) 
    \spo[24]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8800008A2889744C)) 
    \spo[24]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0481050011029112)) 
    \spo[24]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h57C0014000000002)) 
    \spo[24]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1652041080802022)) 
    \spo[24]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00080440C380C030)) 
    \spo[24]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h103998001800B984)) 
    \spo[24]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_4 
       (.I0(\spo[24]_INST_0_i_13_n_0 ),
        .I1(\spo[24]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_16_n_0 ),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4050110014152024)) 
    \spo[24]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h41204121)) 
    \spo[24]_INST_0_i_41 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[24]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_5 
       (.I0(\spo[24]_INST_0_i_17_n_0 ),
        .I1(\spo[24]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_20_n_0 ),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(\spo[24]_INST_0_i_21_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_22_n_0 ),
        .I5(a[9]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_7 
       (.I0(\spo[24]_INST_0_i_23_n_0 ),
        .I1(\spo[24]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_17_n_0 ),
        .O(\spo[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_8 
       (.I0(\spo[24]_INST_0_i_26_n_0 ),
        .I1(\spo[24]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_13_n_0 ),
        .O(\spo[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_9 
       (.I0(\spo[24]_INST_0_i_14_n_0 ),
        .I1(\spo[24]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[24]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_23_n_0 ),
        .O(\spo[24]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[25]_INST_0_i_3_n_0 ),
        .O(\^spo [25]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_4_n_0 ),
        .I1(a[11]),
        .I2(\spo[25]_INST_0_i_5_n_0 ),
        .I3(a[9]),
        .I4(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_10 
       (.I0(\spo[25]_INST_0_i_19_n_0 ),
        .I1(\spo[25]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_27_n_0 ),
        .O(\spo[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_11 
       (.I0(\spo[25]_INST_0_i_28_n_0 ),
        .I1(\spo[25]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_21_n_0 ),
        .O(\spo[25]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_12 
       (.I0(\spo[25]_INST_0_i_22_n_0 ),
        .I1(\spo[25]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_28_n_0 ),
        .O(\spo[25]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[25]_INST_0_i_13 
       (.I0(\spo[25]_INST_0_i_29_n_0 ),
        .I1(a[6]),
        .I2(\spo[25]_INST_0_i_30_n_0 ),
        .O(\spo[25]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h09902008)) 
    \spo[25]_INST_0_i_14 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[25]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \spo[25]_INST_0_i_15 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(a[9]),
        .O(\spo[25]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_16 
       (.I0(\spo[25]_INST_0_i_31_n_0 ),
        .I1(\spo[25]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_34_n_0 ),
        .O(\spo[25]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_17 
       (.I0(\spo[25]_INST_0_i_35_n_0 ),
        .I1(\spo[25]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_38_n_0 ),
        .O(\spo[25]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_18 
       (.I0(\spo[25]_INST_0_i_34_n_0 ),
        .I1(\spo[25]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_37_n_0 ),
        .O(\spo[25]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_19 
       (.I0(\spo[25]_INST_0_i_38_n_0 ),
        .I1(\spo[25]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_41_n_0 ),
        .O(\spo[25]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_2 
       (.I0(\spo[25]_INST_0_i_7_n_0 ),
        .I1(\spo[25]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[25]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[25]_INST_0_i_10_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_20 
       (.I0(\spo[25]_INST_0_i_39_n_0 ),
        .I1(\spo[25]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_29_n_0 ),
        .O(\spo[25]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_21 
       (.I0(\spo[25]_INST_0_i_30_n_0 ),
        .I1(\spo[25]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_33_n_0 ),
        .O(\spo[25]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_22 
       (.I0(\spo[25]_INST_0_i_29_n_0 ),
        .I1(\spo[25]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_32_n_0 ),
        .O(\spo[25]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_23 
       (.I0(\spo[25]_INST_0_i_33_n_0 ),
        .I1(\spo[25]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_36_n_0 ),
        .O(\spo[25]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_24 
       (.I0(\spo[25]_INST_0_i_37_n_0 ),
        .I1(\spo[25]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_40_n_0 ),
        .O(\spo[25]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_25 
       (.I0(\spo[25]_INST_0_i_41_n_0 ),
        .I1(\spo[25]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_31_n_0 ),
        .O(\spo[25]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_26 
       (.I0(\spo[25]_INST_0_i_40_n_0 ),
        .I1(\spo[25]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_30_n_0 ),
        .O(\spo[25]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_27 
       (.I0(\spo[25]_INST_0_i_32_n_0 ),
        .I1(\spo[25]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_35_n_0 ),
        .O(\spo[25]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_28 
       (.I0(\spo[25]_INST_0_i_36_n_0 ),
        .I1(\spo[25]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[25]_INST_0_i_39_n_0 ),
        .O(\spo[25]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h008A0022E7513914)) 
    \spo[25]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_3 
       (.I0(\spo[25]_INST_0_i_11_n_0 ),
        .I1(\spo[25]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[25]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[25]_INST_0_i_7_n_0 ),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008008065531934)) 
    \spo[25]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h4212414210414202)) 
    \spo[25]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h471C00000000828A)) 
    \spo[25]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h92A6A33800000880)) 
    \spo[25]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h90198198C08C48C4)) 
    \spo[25]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h1813813040844844)) 
    \spo[25]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2224041212232320)) 
    \spo[25]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000082A20000E379)) 
    \spo[25]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8B2C208000004965)) 
    \spo[25]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hC80C4C8444141440)) 
    \spo[25]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[25]_INST_0_i_4 
       (.I0(\spo[25]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[25]_INST_0_i_14_n_0 ),
        .I4(a[5]),
        .I5(\spo[25]_INST_0_i_15_n_0 ),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6553193400000000)) 
    \spo[25]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h2243432084088848)) 
    \spo[25]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_5 
       (.I0(\spo[25]_INST_0_i_16_n_0 ),
        .I1(\spo[25]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_19_n_0 ),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_6 
       (.I0(\spo[25]_INST_0_i_20_n_0 ),
        .I1(\spo[25]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_23_n_0 ),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_7 
       (.I0(\spo[25]_INST_0_i_24_n_0 ),
        .I1(\spo[25]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_16_n_0 ),
        .O(\spo[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_8 
       (.I0(\spo[25]_INST_0_i_27_n_0 ),
        .I1(\spo[25]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_20_n_0 ),
        .O(\spo[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_9 
       (.I0(\spo[25]_INST_0_i_21_n_0 ),
        .I1(\spo[25]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[25]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_24_n_0 ),
        .O(\spo[25]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[31]_INST_0_i_3_n_0 ),
        .O(\^spo [27]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[26]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[26]_INST_0_i_2_n_0 ),
        .I5(a[12]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \spo[26]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_3_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4154501705504156)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[28]_INST_0 
       (.I0(\spo[30]_INST_0_i_1_n_0 ),
        .I1(a[11]),
        .I2(\spo[28]_INST_0_i_1_n_0 ),
        .I3(a[12]),
        .I4(a[13]),
        .I5(\spo[30]_INST_0_i_3_n_0 ),
        .O(\^spo [28]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[10]),
        .I1(a[7]),
        .I2(\spo[30]_INST_0_i_7_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[29]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[29]_INST_0_i_3_n_0 ),
        .O(\^spo [29]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[29]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_10 
       (.I0(\spo[29]_INST_0_i_14_n_0 ),
        .I1(\spo[29]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_26_n_0 ),
        .O(\spo[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_11 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[29]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_31_n_0 ),
        .O(\spo[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_12 
       (.I0(\spo[29]_INST_0_i_32_n_0 ),
        .I1(\spo[29]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_35_n_0 ),
        .O(\spo[29]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_36_n_0 ),
        .I1(\spo[29]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_39_n_0 ),
        .O(\spo[29]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_14 
       (.I0(\spo[29]_INST_0_i_35_n_0 ),
        .I1(\spo[29]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_38_n_0 ),
        .O(\spo[29]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_15 
       (.I0(\spo[29]_INST_0_i_39_n_0 ),
        .I1(\spo[29]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_42_n_0 ),
        .O(\spo[29]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_16 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_40_n_0 ),
        .O(\spo[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_17 
       (.I0(\spo[29]_INST_0_i_41_n_0 ),
        .I1(\spo[29]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_44_n_0 ),
        .O(\spo[29]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_18 
       (.I0(\spo[29]_INST_0_i_40_n_0 ),
        .I1(\spo[29]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[29]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_19 
       (.I0(\spo[29]_INST_0_i_44_n_0 ),
        .I1(\spo[29]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_34_n_0 ),
        .O(\spo[29]_INST_0_i_19_n_0 ));
  MUXF8 \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_7_n_0 ),
        .I1(\spo[29]_INST_0_i_8_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[29]_INST_0_i_20 
       (.I0(\spo[29]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[29]_INST_0_i_36_n_0 ),
        .O(\spo[29]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0152401605400152)) 
    \spo[29]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_22 
       (.I0(\spo[29]_INST_0_i_19_n_0 ),
        .I1(\spo[29]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_28_n_0 ),
        .O(\spo[29]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_23 
       (.I0(\spo[29]_INST_0_i_13_n_0 ),
        .I1(\spo[29]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_29_n_0 ),
        .O(\spo[29]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_24 
       (.I0(\spo[29]_INST_0_i_28_n_0 ),
        .I1(\spo[29]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_12_n_0 ),
        .O(\spo[29]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_25 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[29]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_16_n_0 ),
        .O(\spo[29]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_26 
       (.I0(\spo[29]_INST_0_i_42_n_0 ),
        .I1(\spo[29]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_32_n_0 ),
        .O(\spo[29]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_27 
       (.I0(\spo[29]_INST_0_i_33_n_0 ),
        .I1(\spo[29]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_36_n_0 ),
        .O(\spo[29]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_28 
       (.I0(\spo[29]_INST_0_i_38_n_0 ),
        .I1(\spo[29]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_41_n_0 ),
        .O(\spo[29]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_29 
       (.I0(\spo[29]_INST_0_i_43_n_0 ),
        .I1(\spo[29]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_33_n_0 ),
        .O(\spo[29]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_9_n_0 ),
        .I1(\spo[29]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[29]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[29]_INST_0_i_11_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_30 
       (.I0(\spo[29]_INST_0_i_34_n_0 ),
        .I1(\spo[29]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_37_n_0 ),
        .O(\spo[29]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_31 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_45_n_0 ),
        .O(\spo[29]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6060212020213018)) 
    \spo[29]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hE1210981C1A10918)) 
    \spo[29]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h01D0401605C00152)) 
    \spo[29]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h55505040A0000002)) 
    \spo[29]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4F5200A800802A02)) 
    \spo[29]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0B08180D0B180984)) 
    \spo[29]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h11991118A2008804)) 
    \spo[29]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hD106C50202400064)) 
    \spo[29]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_4 
       (.I0(\spo[29]_INST_0_i_12_n_0 ),
        .I1(\spo[29]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_15_n_0 ),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC00000043C0C0C0B)) 
    \spo[29]_INST_0_i_40 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0E0C20A0820A0821)) 
    \spo[29]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hB8B98D8404001051)) 
    \spo[29]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h8AA0001055505040)) 
    \spo[29]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000852104F5200A8)) 
    \spo[29]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8686020202020221)) 
    \spo[29]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_5 
       (.I0(\spo[29]_INST_0_i_16_n_0 ),
        .I1(\spo[29]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_19_n_0 ),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \spo[29]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_21_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[29]_INST_0_i_6_n_0 ));
  MUXF7 \spo[29]_INST_0_i_7 
       (.I0(\spo[29]_INST_0_i_22_n_0 ),
        .I1(\spo[29]_INST_0_i_23_n_0 ),
        .O(\spo[29]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[29]_INST_0_i_8 
       (.I0(\spo[29]_INST_0_i_24_n_0 ),
        .I1(\spo[29]_INST_0_i_25_n_0 ),
        .O(\spo[29]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_9 
       (.I0(\spo[29]_INST_0_i_26_n_0 ),
        .I1(\spo[29]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_13_n_0 ),
        .O(\spo[29]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .O(\^spo [2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[2]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_14_n_0 ),
        .I1(\spo[2]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_26_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_29_n_0 ),
        .I1(\spo[2]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_32_n_0 ),
        .I1(\spo[2]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_35_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_36_n_0 ),
        .I1(\spo[2]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_39_n_0 ),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_35_n_0 ),
        .I1(\spo[2]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_38_n_0 ),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_15 
       (.I0(\spo[2]_INST_0_i_39_n_0 ),
        .I1(\spo[2]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_42_n_0 ),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_16 
       (.I0(\spo[2]_INST_0_i_37_n_0 ),
        .I1(\spo[2]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_40_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_17 
       (.I0(\spo[2]_INST_0_i_41_n_0 ),
        .I1(\spo[2]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_44_n_0 ),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_18 
       (.I0(\spo[2]_INST_0_i_40_n_0 ),
        .I1(\spo[2]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_43_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_19 
       (.I0(\spo[2]_INST_0_i_44_n_0 ),
        .I1(\spo[2]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_34_n_0 ),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  MUXF8 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(\spo[2]_INST_0_i_8_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h0510040140444406)) 
    \spo[2]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[2]_INST_0_i_21 
       (.I0(\spo[2]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_36_n_0 ),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_22 
       (.I0(\spo[2]_INST_0_i_19_n_0 ),
        .I1(\spo[2]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_28_n_0 ),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_23 
       (.I0(\spo[2]_INST_0_i_13_n_0 ),
        .I1(\spo[2]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_29_n_0 ),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_24 
       (.I0(\spo[2]_INST_0_i_28_n_0 ),
        .I1(\spo[2]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_12_n_0 ),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_25 
       (.I0(\spo[2]_INST_0_i_29_n_0 ),
        .I1(\spo[2]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_16_n_0 ),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_26 
       (.I0(\spo[2]_INST_0_i_42_n_0 ),
        .I1(\spo[2]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_32_n_0 ),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_27 
       (.I0(\spo[2]_INST_0_i_33_n_0 ),
        .I1(\spo[2]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_36_n_0 ),
        .O(\spo[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_28 
       (.I0(\spo[2]_INST_0_i_38_n_0 ),
        .I1(\spo[2]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_41_n_0 ),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_29 
       (.I0(\spo[2]_INST_0_i_43_n_0 ),
        .I1(\spo[2]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_33_n_0 ),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_9_n_0 ),
        .I1(\spo[2]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[2]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[2]_INST_0_i_11_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_30 
       (.I0(\spo[2]_INST_0_i_34_n_0 ),
        .I1(\spo[2]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_37_n_0 ),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_31 
       (.I0(\spo[2]_INST_0_i_37_n_0 ),
        .I1(\spo[2]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_45_n_0 ),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h338830800011090C)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h919199000880809C)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0510040360646406)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4242420000000023)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h888220208AA22803)) 
    \spo[2]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8D8D8D00101101C5)) 
    \spo[2]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h1890100C40404004)) 
    \spo[2]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h4551140388822020)) 
    \spo[2]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_12_n_0 ),
        .I1(\spo[2]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_15_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000002A803FC01)) 
    \spo[2]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0088A82A20835401)) 
    \spo[2]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D10005141053)) 
    \spo[2]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h4441444000000002)) 
    \spo[2]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h2260400E22208A22)) 
    \spo[2]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000028883CCC0)) 
    \spo[2]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_16_n_0 ),
        .I1(\spo[2]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_19_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[8]),
        .I1(\spo[2]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[2]_INST_0_i_21_n_0 ),
        .I5(a[10]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  MUXF7 \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_22_n_0 ),
        .I1(\spo[2]_INST_0_i_23_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_24_n_0 ),
        .I1(\spo[2]_INST_0_i_25_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_26_n_0 ),
        .I1(\spo[2]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[30]_INST_0 
       (.I0(\spo[30]_INST_0_i_1_n_0 ),
        .I1(a[11]),
        .I2(\spo[30]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(a[13]),
        .I5(\spo[30]_INST_0_i_3_n_0 ),
        .O(\^spo [30]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[30]_INST_0_i_1 
       (.I0(\spo[30]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[30]_INST_0_i_5_n_0 ),
        .I3(a[10]),
        .I4(\spo[30]_INST_0_i_6_n_0 ),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  MUXF8 \spo[30]_INST_0_i_10 
       (.I0(\spo[30]_INST_0_i_29_n_0 ),
        .I1(\spo[30]_INST_0_i_30_n_0 ),
        .O(\spo[30]_INST_0_i_10_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_11 
       (.I0(\spo[30]_INST_0_i_31_n_0 ),
        .I1(\spo[30]_INST_0_i_5_n_0 ),
        .I2(a[9]),
        .I3(\spo[30]_INST_0_i_32_n_0 ),
        .I4(a[10]),
        .I5(\spo[30]_INST_0_i_33_n_0 ),
        .O(\spo[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_12 
       (.I0(\spo[30]_INST_0_i_6_n_0 ),
        .I1(\spo[30]_INST_0_i_27_n_0 ),
        .I2(a[9]),
        .I3(\spo[30]_INST_0_i_25_n_0 ),
        .I4(a[10]),
        .I5(\spo[30]_INST_0_i_26_n_0 ),
        .O(\spo[30]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5001000000A00000)) 
    \spo[30]_INST_0_i_13 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[30]_INST_0_i_34_n_0 ),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0600000000008500)) 
    \spo[30]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[30]_INST_0_i_34_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h800A000050010000)) 
    \spo[30]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[30]_INST_0_i_34_n_0 ),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000100060000800)) 
    \spo[30]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[30]_INST_0_i_34_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \spo[30]_INST_0_i_17 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[30]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000010000000)) 
    \spo[30]_INST_0_i_18 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000100020000000)) 
    \spo[30]_INST_0_i_19 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[30]_INST_0_i_2 
       (.I0(a[10]),
        .I1(\spo[30]_INST_0_i_7_n_0 ),
        .I2(a[7]),
        .I3(\spo[30]_INST_0_i_8_n_0 ),
        .I4(a[8]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000200000000000)) 
    \spo[30]_INST_0_i_20 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \spo[30]_INST_0_i_21 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[30]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hC100000000000000)) 
    \spo[30]_INST_0_i_22 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000008000)) 
    \spo[30]_INST_0_i_23 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spo[30]_INST_0_i_24 
       (.I0(a[2]),
        .I1(a[1]),
        .O(\spo[30]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_25 
       (.I0(\spo[30]_INST_0_i_35_n_0 ),
        .I1(\spo[30]_INST_0_i_17_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_18_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_19_n_0 ),
        .O(\spo[30]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_26 
       (.I0(\spo[30]_INST_0_i_36_n_0 ),
        .I1(\spo[30]_INST_0_i_7_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_22_n_0 ),
        .O(\spo[30]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_27 
       (.I0(\spo[30]_INST_0_i_20_n_0 ),
        .I1(\spo[30]_INST_0_i_37_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_38_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_39_n_0 ),
        .O(\spo[30]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_28 
       (.I0(\spo[30]_INST_0_i_23_n_0 ),
        .I1(\spo[30]_INST_0_i_35_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_18_n_0 ),
        .O(\spo[30]_INST_0_i_28_n_0 ));
  MUXF7 \spo[30]_INST_0_i_29 
       (.I0(\spo[30]_INST_0_i_40_n_0 ),
        .I1(\spo[30]_INST_0_i_41_n_0 ),
        .O(\spo[30]_INST_0_i_29_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_3 
       (.I0(\spo[30]_INST_0_i_9_n_0 ),
        .I1(\spo[30]_INST_0_i_10_n_0 ),
        .I2(a[12]),
        .I3(\spo[30]_INST_0_i_11_n_0 ),
        .I4(a[11]),
        .I5(\spo[30]_INST_0_i_12_n_0 ),
        .O(\spo[30]_INST_0_i_3_n_0 ));
  MUXF7 \spo[30]_INST_0_i_30 
       (.I0(\spo[30]_INST_0_i_42_n_0 ),
        .I1(\spo[30]_INST_0_i_43_n_0 ),
        .O(\spo[30]_INST_0_i_30_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_31 
       (.I0(\spo[30]_INST_0_i_38_n_0 ),
        .I1(\spo[30]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_36_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_7_n_0 ),
        .O(\spo[30]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_32 
       (.I0(\spo[30]_INST_0_i_21_n_0 ),
        .I1(\spo[30]_INST_0_i_22_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_23_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_35_n_0 ),
        .O(\spo[30]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_33 
       (.I0(\spo[30]_INST_0_i_37_n_0 ),
        .I1(\spo[30]_INST_0_i_38_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_39_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_36_n_0 ),
        .O(\spo[30]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[30]_INST_0_i_34 
       (.I0(a[1]),
        .I1(a[2]),
        .O(\spo[30]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000003000)) 
    \spo[30]_INST_0_i_35 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000400080000000)) 
    \spo[30]_INST_0_i_36 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h800000000000C000)) 
    \spo[30]_INST_0_i_37 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C1000000)) 
    \spo[30]_INST_0_i_38 
       (.I0(a[6]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040002000)) 
    \spo[30]_INST_0_i_39 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_4 
       (.I0(\spo[30]_INST_0_i_13_n_0 ),
        .I1(\spo[30]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_16_n_0 ),
        .O(\spo[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_40 
       (.I0(\spo[30]_INST_0_i_18_n_0 ),
        .I1(\spo[30]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_37_n_0 ),
        .O(\spo[30]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_41 
       (.I0(\spo[30]_INST_0_i_39_n_0 ),
        .I1(\spo[30]_INST_0_i_36_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_21_n_0 ),
        .O(\spo[30]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_42 
       (.I0(\spo[30]_INST_0_i_22_n_0 ),
        .I1(\spo[30]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_35_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_17_n_0 ),
        .O(\spo[30]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_43 
       (.I0(\spo[30]_INST_0_i_19_n_0 ),
        .I1(\spo[30]_INST_0_i_20_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_37_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_38_n_0 ),
        .O(\spo[30]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_5 
       (.I0(\spo[30]_INST_0_i_17_n_0 ),
        .I1(\spo[30]_INST_0_i_18_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_20_n_0 ),
        .O(\spo[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_6 
       (.I0(\spo[30]_INST_0_i_7_n_0 ),
        .I1(\spo[30]_INST_0_i_21_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_22_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_23_n_0 ),
        .O(\spo[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000800030000000)) 
    \spo[30]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \spo[30]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[30]_INST_0_i_24_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_9 
       (.I0(\spo[30]_INST_0_i_25_n_0 ),
        .I1(\spo[30]_INST_0_i_26_n_0 ),
        .I2(a[9]),
        .I3(\spo[30]_INST_0_i_27_n_0 ),
        .I4(a[10]),
        .I5(\spo[30]_INST_0_i_28_n_0 ),
        .O(\spo[30]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[31]_INST_0_i_3_n_0 ),
        .O(\^spo [31]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[31]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_14_n_0 ),
        .I1(\spo[31]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_26_n_0 ),
        .O(\spo[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_29_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_31_n_0 ),
        .O(\spo[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_32_n_0 ),
        .I1(\spo[31]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_35_n_0 ),
        .O(\spo[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_13 
       (.I0(\spo[31]_INST_0_i_36_n_0 ),
        .I1(\spo[31]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_39_n_0 ),
        .O(\spo[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_14 
       (.I0(\spo[31]_INST_0_i_35_n_0 ),
        .I1(\spo[31]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_38_n_0 ),
        .O(\spo[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_39_n_0 ),
        .I1(\spo[31]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_42_n_0 ),
        .O(\spo[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_16 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(\spo[31]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_40_n_0 ),
        .O(\spo[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_17 
       (.I0(\spo[31]_INST_0_i_41_n_0 ),
        .I1(\spo[31]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_44_n_0 ),
        .O(\spo[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_18 
       (.I0(\spo[31]_INST_0_i_40_n_0 ),
        .I1(\spo[31]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_43_n_0 ),
        .O(\spo[31]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_19 
       (.I0(\spo[31]_INST_0_i_44_n_0 ),
        .I1(\spo[31]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_34_n_0 ),
        .O(\spo[31]_INST_0_i_19_n_0 ));
  MUXF8 \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_7_n_0 ),
        .I1(\spo[31]_INST_0_i_8_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[31]_INST_0_i_20 
       (.I0(\spo[31]_INST_0_i_35_n_0 ),
        .I1(a[6]),
        .I2(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4156501705504156)) 
    \spo[31]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_22 
       (.I0(\spo[31]_INST_0_i_19_n_0 ),
        .I1(\spo[31]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_28_n_0 ),
        .O(\spo[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_23 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(\spo[31]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_29_n_0 ),
        .O(\spo[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_24 
       (.I0(\spo[31]_INST_0_i_28_n_0 ),
        .I1(\spo[31]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_12_n_0 ),
        .O(\spo[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_25 
       (.I0(\spo[31]_INST_0_i_29_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_16_n_0 ),
        .O(\spo[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_26 
       (.I0(\spo[31]_INST_0_i_42_n_0 ),
        .I1(\spo[31]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_32_n_0 ),
        .O(\spo[31]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_27 
       (.I0(\spo[31]_INST_0_i_33_n_0 ),
        .I1(\spo[31]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_28 
       (.I0(\spo[31]_INST_0_i_38_n_0 ),
        .I1(\spo[31]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_41_n_0 ),
        .O(\spo[31]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_29 
       (.I0(\spo[31]_INST_0_i_43_n_0 ),
        .I1(\spo[31]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_33_n_0 ),
        .O(\spo[31]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_9_n_0 ),
        .I1(\spo[31]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[31]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[31]_INST_0_i_11_n_0 ),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_30 
       (.I0(\spo[31]_INST_0_i_34_n_0 ),
        .I1(\spo[31]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_37_n_0 ),
        .O(\spo[31]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_31 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(\spo[31]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_45_n_0 ),
        .O(\spo[31]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h333333399989889C)) 
    \spo[31]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hB1B1991939B1B19C)) 
    \spo[31]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4176503705724376)) 
    \spo[31]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4242424242424223)) 
    \spo[31]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hE8E0A28ACAE8E0A3)) 
    \spo[31]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h9D8D8D9C9C9D8DC5)) 
    \spo[31]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h1199911CCC44CCC4)) 
    \spo[31]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h767237762406602C)) 
    \spo[31]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_12_n_0 ),
        .I1(\spo[31]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_15_n_0 ),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000002BBBBBBBD)) 
    \spo[31]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA8222A823B93339D)) 
    \spo[31]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hD4D1D0C5C5D0D453)) 
    \spo[31]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hF7F5555400000002)) 
    \spo[31]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h04FF53AE8AA2208A)) 
    \spo[31]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAABFFFC)) 
    \spo[31]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_16_n_0 ),
        .I1(\spo[31]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_19_n_0 ),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \spo[31]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[31]_INST_0_i_21_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  MUXF7 \spo[31]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .O(\spo[31]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[31]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_24_n_0 ),
        .I1(\spo[31]_INST_0_i_25_n_0 ),
        .O(\spo[31]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(\spo[31]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_13_n_0 ),
        .O(\spo[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[3]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[3]_INST_0_i_3_n_0 ),
        .O(\^spo [3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[3]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[3]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_14_n_0 ),
        .I1(\spo[3]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_26_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_32_n_0 ),
        .I1(\spo[3]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_20_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_34_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_35_n_0 ),
        .I1(\spo[3]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_38_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_14 
       (.I0(\spo[3]_INST_0_i_34_n_0 ),
        .I1(\spo[3]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_37_n_0 ),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_15 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(\spo[3]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_41_n_0 ),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[3]_INST_0_i_36_n_0 ),
        .I1(\spo[3]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_39_n_0 ),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_17 
       (.I0(\spo[3]_INST_0_i_40_n_0 ),
        .I1(\spo[3]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_43_n_0 ),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_18 
       (.I0(\spo[3]_INST_0_i_39_n_0 ),
        .I1(\spo[3]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_42_n_0 ),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_19 
       (.I0(\spo[3]_INST_0_i_43_n_0 ),
        .I1(\spo[3]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_20_n_0 ),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  MUXF8 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h0401100200044010)) 
    \spo[3]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[3]_INST_0_i_21 
       (.I0(\spo[3]_INST_0_i_34_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_35_n_0 ),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_22 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[3]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_28_n_0 ),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_23 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(\spo[3]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_29_n_0 ),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_24 
       (.I0(\spo[3]_INST_0_i_28_n_0 ),
        .I1(\spo[3]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_25 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_26 
       (.I0(\spo[3]_INST_0_i_41_n_0 ),
        .I1(\spo[3]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_32_n_0 ),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_27 
       (.I0(\spo[3]_INST_0_i_33_n_0 ),
        .I1(\spo[3]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_35_n_0 ),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_28 
       (.I0(\spo[3]_INST_0_i_37_n_0 ),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_40_n_0 ),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_29 
       (.I0(\spo[3]_INST_0_i_42_n_0 ),
        .I1(\spo[3]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_9_n_0 ),
        .I1(\spo[3]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[3]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[3]_INST_0_i_11_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_30 
       (.I0(\spo[3]_INST_0_i_20_n_0 ),
        .I1(\spo[3]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_36_n_0 ),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_31 
       (.I0(\spo[3]_INST_0_i_36_n_0 ),
        .I1(\spo[3]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_44_n_0 ),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1918183818191884)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8020080208000100)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202420221)) 
    \spo[3]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAC8888A080200802)) 
    \spo[3]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0100001000090400)) 
    \spo[3]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0080010C4444C440)) 
    \spo[3]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h622236202042000C)) 
    \spo[3]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000120)) 
    \spo[3]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_12_n_0 ),
        .I1(\spo[3]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_15_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02008020080355D4)) 
    \spo[3]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h5440414440D04003)) 
    \spo[3]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0800010000000000)) 
    \spo[3]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0401004802008020)) 
    \spo[3]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \spo[3]_INST_0_i_44 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_16_n_0 ),
        .I1(\spo[3]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_19_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[8]),
        .I1(\spo[3]_INST_0_i_20_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[3]_INST_0_i_21_n_0 ),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  MUXF7 \spo[3]_INST_0_i_7 
       (.I0(\spo[3]_INST_0_i_22_n_0 ),
        .I1(\spo[3]_INST_0_i_23_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_24_n_0 ),
        .I1(\spo[3]_INST_0_i_25_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_26_n_0 ),
        .I1(\spo[3]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_13_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[4]_INST_0_i_3_n_0 ),
        .O(\^spo [4]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[4]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_14_n_0 ),
        .I1(\spo[4]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_25_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_27_n_0 ),
        .I1(\spo[4]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_29_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[4]_INST_0_i_12 
       (.I0(a[5]),
        .I1(\spo[10]_INST_0_i_49_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_26_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_35_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[4]_INST_0_i_13 
       (.I0(\spo[7]_INST_0_i_24_n_0 ),
        .I1(\spo[4]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_14 
       (.I0(\spo[31]_INST_0_i_35_n_0 ),
        .I1(\spo[7]_INST_0_i_24_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_30_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_34_n_0 ),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[5]),
        .I1(\spo[5]_INST_0_i_13_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_53_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_31_n_0 ),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \spo[4]_INST_0_i_16 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[5]_INST_0_i_13_n_0 ),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_17 
       (.I0(\spo[10]_INST_0_i_53_n_0 ),
        .I1(\spo[4]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_44_n_0 ),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_18 
       (.I0(\spo[4]_INST_0_i_32_n_0 ),
        .I1(\spo[10]_INST_0_i_53_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_56_n_0 ),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00C0FFC000)) 
    \spo[4]_INST_0_i_19 
       (.I0(\spo[31]_INST_0_i_44_n_0 ),
        .I1(\spo[10]_INST_0_i_49_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[10]_INST_0_i_26_n_0 ),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  MUXF8 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(\spo[4]_INST_0_i_8_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[4]_INST_0_i_20 
       (.I0(\spo[10]_INST_0_i_26_n_0 ),
        .I1(a[7]),
        .I2(\spo[31]_INST_0_i_35_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_21 
       (.I0(\spo[4]_INST_0_i_19_n_0 ),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_26_n_0 ),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_22 
       (.I0(\spo[4]_INST_0_i_13_n_0 ),
        .I1(\spo[4]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_27_n_0 ),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_23 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(\spo[4]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_12_n_0 ),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_24 
       (.I0(\spo[4]_INST_0_i_27_n_0 ),
        .I1(\spo[4]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_25 
       (.I0(\spo[4]_INST_0_i_31_n_0 ),
        .I1(\spo[10]_INST_0_i_56_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_33_n_0 ),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h88B8333388B80000)) 
    \spo[4]_INST_0_i_26 
       (.I0(\spo[7]_INST_0_i_34_n_0 ),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_13_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_53_n_0 ),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0C0C0C0C0)) 
    \spo[4]_INST_0_i_27 
       (.I0(\spo[10]_INST_0_i_56_n_0 ),
        .I1(\spo[31]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[10]_INST_0_i_49_n_0 ),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_28 
       (.I0(\spo[10]_INST_0_i_26_n_0 ),
        .I1(\spo[31]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_24_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \spo[4]_INST_0_i_29 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[15]_INST_0_i_14_n_0 ),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[4]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[4]_INST_0_i_11_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9585859494958545)) 
    \spo[4]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8400000000002)) 
    \spo[4]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[4]_INST_0_i_32 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0001AAA800000000)) 
    \spo[4]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_12_n_0 ),
        .I1(\spo[4]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_15_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_16_n_0 ),
        .I1(\spo[4]_INST_0_i_17_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_19_n_0 ),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[10]),
        .I1(\spo[4]_INST_0_i_20_n_0 ),
        .I2(a[8]),
        .I3(a[9]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF7 \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_21_n_0 ),
        .I1(\spo[4]_INST_0_i_22_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_23_n_0 ),
        .I1(\spo[4]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(\spo[4]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_13_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[5]_INST_0_i_3_n_0 ),
        .O(\^spo [5]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[5]_INST_0_i_5_n_0 ),
        .I4(a[9]),
        .I5(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_20_n_0 ),
        .I1(\spo[5]_INST_0_i_21_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_26_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(\spo[5]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_31_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_32_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_33_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_14 
       (.I0(\spo[5]_INST_0_i_34_n_0 ),
        .I1(\spo[5]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_37_n_0 ),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_15 
       (.I0(\spo[5]_INST_0_i_38_n_0 ),
        .I1(\spo[5]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_40_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_41_n_0 ),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_16 
       (.I0(\spo[5]_INST_0_i_37_n_0 ),
        .I1(\spo[5]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_40_n_0 ),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_17 
       (.I0(\spo[5]_INST_0_i_41_n_0 ),
        .I1(\spo[5]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_43_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_44_n_0 ),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_18 
       (.I0(\spo[5]_INST_0_i_42_n_0 ),
        .I1(\spo[5]_INST_0_i_43_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_44_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_32_n_0 ),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_19 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_36_n_0 ),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  MUXF8 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_20 
       (.I0(\spo[5]_INST_0_i_32_n_0 ),
        .I1(\spo[5]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_35_n_0 ),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_21 
       (.I0(\spo[5]_INST_0_i_36_n_0 ),
        .I1(\spo[5]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_39_n_0 ),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_22 
       (.I0(\spo[5]_INST_0_i_17_n_0 ),
        .I1(\spo[5]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_28_n_0 ),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_23 
       (.I0(\spo[5]_INST_0_i_19_n_0 ),
        .I1(\spo[5]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_29_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_24 
       (.I0(\spo[5]_INST_0_i_28_n_0 ),
        .I1(\spo[5]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_18_n_0 ),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_25 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(\spo[5]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_14_n_0 ),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_26 
       (.I0(\spo[5]_INST_0_i_39_n_0 ),
        .I1(\spo[5]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_42_n_0 ),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_27 
       (.I0(\spo[5]_INST_0_i_43_n_0 ),
        .I1(\spo[5]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_33_n_0 ),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_28 
       (.I0(\spo[5]_INST_0_i_35_n_0 ),
        .I1(\spo[5]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_37_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_38_n_0 ),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_29 
       (.I0(\spo[5]_INST_0_i_40_n_0 ),
        .I1(\spo[5]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_43_n_0 ),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_9_n_0 ),
        .I1(\spo[5]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[5]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[5]_INST_0_i_11_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_30 
       (.I0(\spo[5]_INST_0_i_44_n_0 ),
        .I1(\spo[5]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_34_n_0 ),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_31 
       (.I0(\spo[5]_INST_0_i_34_n_0 ),
        .I1(\spo[5]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_45_n_0 ),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hE7FFFF7BE77BFFFE)) 
    \spo[5]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h5A5F5FFF7FEFFFBF)) 
    \spo[5]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE8F8EBCAFAEBDABA)) 
    \spo[5]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE5E567C66F6FC67B)) 
    \spo[5]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0D0FC98C9BD98E93)) 
    \spo[5]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h7788FFCCFBCCBCDF)) 
    \spo[5]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h7AFEFEBEFABEFEEF)) 
    \spo[5]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFE7FFB7FFFFFFFFF)) 
    \spo[5]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000002E222E2E)) 
    \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[5]_INST_0_i_13_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h99EEBBFFBAF7AF7D)) 
    \spo[5]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFF88B9DF9CB9EB15)) 
    \spo[5]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h9797D6D4D7D6C567)) 
    \spo[5]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E66E6C64C4C63)) 
    \spo[5]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFDF7FFFFFFFFF)) 
    \spo[5]_INST_0_i_44 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h77FFFBBC88CCCCCE)) 
    \spo[5]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_14_n_0 ),
        .I1(\spo[5]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_17_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_18_n_0 ),
        .I1(\spo[5]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_21_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF7 \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_22_n_0 ),
        .I1(\spo[5]_INST_0_i_23_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_24_n_0 ),
        .I1(\spo[5]_INST_0_i_25_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_26_n_0 ),
        .I1(\spo[5]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_19_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .O(\^spo [6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_4_n_0 ),
        .I1(a[9]),
        .I2(\spo[6]_INST_0_i_5_n_0 ),
        .I3(a[11]),
        .I4(\spo[6]_INST_0_i_6_n_0 ),
        .I5(a[12]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_10 
       (.I0(\spo[6]_INST_0_i_12_n_0 ),
        .I1(\spo[6]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_22_n_0 ),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_11 
       (.I0(\spo[6]_INST_0_i_25_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_26_n_0 ),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_12 
       (.I0(\spo[10]_INST_0_i_56_n_0 ),
        .I1(\spo[7]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_32_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_34_n_0 ),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00C0FFC000)) 
    \spo[6]_INST_0_i_13 
       (.I0(\spo[10]_INST_0_i_51_n_0 ),
        .I1(\spo[10]_INST_0_i_42_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_27_n_0 ),
        .I5(a[6]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_14 
       (.I0(\spo[7]_INST_0_i_32_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_51_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_45_n_0 ),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spo[6]_INST_0_i_15 
       (.I0(\spo[6]_INST_0_i_28_n_0 ),
        .I1(\spo[7]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0030BB3300308800)) 
    \spo[6]_INST_0_i_16 
       (.I0(\spo[10]_INST_0_i_44_n_0 ),
        .I1(a[7]),
        .I2(\spo[10]_INST_0_i_49_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_26_n_0 ),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \spo[6]_INST_0_i_17 
       (.I0(\spo[6]_INST_0_i_29_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_30_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_31_n_0 ),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_18 
       (.I0(\spo[6]_INST_0_i_16_n_0 ),
        .I1(\spo[6]_INST_0_i_12_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_24_n_0 ),
        .O(\spo[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_19 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(\spo[6]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_13_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_25_n_0 ),
        .O(\spo[6]_INST_0_i_19_n_0 ));
  MUXF8 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(\spo[6]_INST_0_i_8_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_20 
       (.I0(\spo[6]_INST_0_i_24_n_0 ),
        .I1(\spo[6]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_21 
       (.I0(\spo[6]_INST_0_i_25_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_14_n_0 ),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8888888)) 
    \spo[6]_INST_0_i_22 
       (.I0(\spo[10]_INST_0_i_56_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_57_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_23 
       (.I0(\spo[6]_INST_0_i_31_n_0 ),
        .I1(\spo[10]_INST_0_i_26_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_31_n_0 ),
        .O(\spo[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_24 
       (.I0(\spo[31]_INST_0_i_38_n_0 ),
        .I1(\spo[31]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[6]_INST_0_i_28_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_28_n_0 ),
        .O(\spo[6]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h03008080)) 
    \spo[6]_INST_0_i_25 
       (.I0(\spo[7]_INST_0_i_29_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[7]_INST_0_i_26_n_0 ),
        .I4(a[6]),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_26 
       (.I0(\spo[7]_INST_0_i_32_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_51_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_23_n_0 ),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h5550400000000002)) 
    \spo[6]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAFEABFC)) 
    \spo[6]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[6]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .O(\spo[6]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_9_n_0 ),
        .I1(\spo[6]_INST_0_i_5_n_0 ),
        .I2(a[11]),
        .I3(\spo[6]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[6]_INST_0_i_11_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \spo[6]_INST_0_i_30 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\spo[6]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000000001AAA8)) 
    \spo[6]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_15_n_0 ),
        .I1(\spo[31]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_14_n_0 ),
        .I1(\spo[7]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[8]),
        .I1(\spo[10]_INST_0_i_26_n_0 ),
        .I2(a[6]),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_17_n_0 ),
        .I5(a[10]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  MUXF7 \spo[6]_INST_0_i_7 
       (.I0(\spo[6]_INST_0_i_18_n_0 ),
        .I1(\spo[6]_INST_0_i_19_n_0 ),
        .O(\spo[6]_INST_0_i_7_n_0 ),
        .S(a[9]));
  MUXF7 \spo[6]_INST_0_i_8 
       (.I0(\spo[6]_INST_0_i_20_n_0 ),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .O(\spo[6]_INST_0_i_8_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_9 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[7]_INST_0_i_3_n_0 ),
        .O(\^spo [7]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_4_n_0 ),
        .I1(a[10]),
        .I2(\spo[7]_INST_0_i_5_n_0 ),
        .I3(a[9]),
        .I4(\spo[7]_INST_0_i_6_n_0 ),
        .I5(a[11]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_10 
       (.I0(\spo[7]_INST_0_i_17_n_0 ),
        .I1(\spo[7]_INST_0_i_13_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_21_n_0 ),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_11 
       (.I0(\spo[7]_INST_0_i_22_n_0 ),
        .I1(\spo[7]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_13_n_0 ),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_12 
       (.I0(\spo[7]_INST_0_i_13_n_0 ),
        .I1(\spo[7]_INST_0_i_14_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_13 
       (.I0(\spo[7]_INST_0_i_23_n_0 ),
        .I1(\spo[7]_INST_0_i_24_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_25_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_48_n_0 ),
        .O(\spo[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88FF8800F000F000)) 
    \spo[7]_INST_0_i_14 
       (.I0(\spo[7]_INST_0_i_26_n_0 ),
        .I1(a[5]),
        .I2(\spo[7]_INST_0_i_27_n_0 ),
        .I3(a[7]),
        .I4(\spo[7]_INST_0_i_28_n_0 ),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F400F0F4F400000)) 
    \spo[7]_INST_0_i_15 
       (.I0(a[5]),
        .I1(\spo[7]_INST_0_i_26_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_34_n_0 ),
        .I4(a[6]),
        .I5(\spo[31]_INST_0_i_35_n_0 ),
        .O(\spo[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFA0C0A0)) 
    \spo[7]_INST_0_i_16 
       (.I0(\spo[9]_INST_0_i_52_n_0 ),
        .I1(\spo[15]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[7]_INST_0_i_29_n_0 ),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_17 
       (.I0(\spo[31]_INST_0_i_44_n_0 ),
        .I1(\spo[31]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_30_n_0 ),
        .O(\spo[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB800B80088338800)) 
    \spo[7]_INST_0_i_18 
       (.I0(\spo[10]_INST_0_i_56_n_0 ),
        .I1(a[7]),
        .I2(\spo[10]_INST_0_i_44_n_0 ),
        .I3(a[6]),
        .I4(\spo[10]_INST_0_i_49_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_19 
       (.I0(\spo[10]_INST_0_i_26_n_0 ),
        .I1(\spo[10]_INST_0_i_56_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_31_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_32_n_0 ),
        .O(\spo[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_7_n_0 ),
        .I1(\spo[7]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[7]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[7]_INST_0_i_10_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spo[7]_INST_0_i_20 
       (.I0(a[6]),
        .I1(\spo[7]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .O(\spo[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_21 
       (.I0(\spo[7]_INST_0_i_34_n_0 ),
        .I1(\spo[10]_INST_0_i_51_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_35_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_36_n_0 ),
        .O(\spo[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_22 
       (.I0(\spo[10]_INST_0_i_54_n_0 ),
        .I1(\spo[7]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_55_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_38_n_0 ),
        .O(\spo[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h000000000002AAA9)) 
    \spo[7]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8800000000001)) 
    \spo[7]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9484848484848040)) 
    \spo[7]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h54404442)) 
    \spo[7]_INST_0_i_26 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AA54A954)) 
    \spo[7]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000015554)) 
    \spo[7]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h62222208)) 
    \spo[7]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[7]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_11_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .I2(a[11]),
        .I3(\spo[7]_INST_0_i_12_n_0 ),
        .I4(a[9]),
        .I5(\spo[7]_INST_0_i_7_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h400000000002A8A8)) 
    \spo[7]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h46460C288288A82A)) 
    \spo[7]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0909091818190D85)) 
    \spo[7]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hA82A0A82A0A95554)) 
    \spo[7]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h1199911888008884)) 
    \spo[7]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C0C0C4B)) 
    \spo[7]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h20288AA2280AA2A1)) 
    \spo[7]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hA0A9555400000000)) 
    \spo[7]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000002ABA90414)) 
    \spo[7]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_13_n_0 ),
        .I1(a[8]),
        .I2(\spo[7]_INST_0_i_14_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[7]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_15_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_13_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_16_n_0 ),
        .I1(a[10]),
        .I2(\spo[31]_INST_0_i_18_n_0 ),
        .I3(a[8]),
        .I4(\spo[7]_INST_0_i_17_n_0 ),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_18_n_0 ),
        .I1(\spo[7]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_8 
       (.I0(\spo[7]_INST_0_i_21_n_0 ),
        .I1(\spo[7]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(\spo[31]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_18_n_0 ),
        .O(\spo[7]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[8]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[8]_INST_0_i_3_n_0 ),
        .O(\^spo [8]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_4_n_0 ),
        .I1(\spo[8]_INST_0_i_5_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_10 
       (.I0(\spo[9]_INST_0_i_43_n_0 ),
        .I1(\spo[9]_INST_0_i_44_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_26_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_27_n_0 ),
        .O(\spo[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_11 
       (.I0(\spo[9]_INST_0_i_47_n_0 ),
        .I1(\spo[8]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_30_n_0 ),
        .O(\spo[8]_INST_0_i_11_n_0 ));
  MUXF7 \spo[8]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_25_n_0 ),
        .I1(\spo[8]_INST_0_i_24_n_0 ),
        .O(\spo[8]_INST_0_i_12_n_0 ),
        .S(a[8]));
  MUXF7 \spo[8]_INST_0_i_13 
       (.I0(\spo[9]_INST_0_i_42_n_0 ),
        .I1(\spo[9]_INST_0_i_41_n_0 ),
        .O(\spo[8]_INST_0_i_13_n_0 ),
        .S(a[8]));
  MUXF7 \spo[8]_INST_0_i_14 
       (.I0(\spo[9]_INST_0_i_38_n_0 ),
        .I1(\spo[9]_INST_0_i_37_n_0 ),
        .O(\spo[8]_INST_0_i_14_n_0 ),
        .S(a[8]));
  MUXF7 \spo[8]_INST_0_i_15 
       (.I0(\spo[9]_INST_0_i_44_n_0 ),
        .I1(\spo[9]_INST_0_i_43_n_0 ),
        .O(\spo[8]_INST_0_i_15_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_16 
       (.I0(\spo[8]_INST_0_i_31_n_0 ),
        .I1(\spo[9]_INST_0_i_53_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_52_n_0 ),
        .I4(a[5]),
        .I5(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[8]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[8]_INST_0_i_17 
       (.I0(a[5]),
        .I1(\spo[9]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .O(\spo[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_18 
       (.I0(\spo[9]_INST_0_i_20_n_0 ),
        .I1(\spo[9]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_33_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_34_n_0 ),
        .O(\spo[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_19 
       (.I0(\spo[9]_INST_0_i_22_n_0 ),
        .I1(\spo[9]_INST_0_i_19_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_25_n_0 ),
        .O(\spo[8]_INST_0_i_19_n_0 ));
  MUXF8 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_6_n_0 ),
        .I1(\spo[8]_INST_0_i_7_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_20 
       (.I0(\spo[8]_INST_0_i_26_n_0 ),
        .I1(\spo[8]_INST_0_i_27_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_35_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_21_n_0 ),
        .O(\spo[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_21 
       (.I0(\spo[9]_INST_0_i_47_n_0 ),
        .I1(\spo[8]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_36_n_0 ),
        .O(\spo[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_22 
       (.I0(\spo[9]_INST_0_i_59_n_0 ),
        .I1(\spo[8]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_61_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_38_n_0 ),
        .O(\spo[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_23 
       (.I0(\spo[8]_INST_0_i_39_n_0 ),
        .I1(\spo[8]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_41_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_42_n_0 ),
        .O(\spo[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_24 
       (.I0(\spo[8]_INST_0_i_43_n_0 ),
        .I1(\spo[8]_INST_0_i_44_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_45_n_0 ),
        .O(\spo[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB8C0B8C0BB338800)) 
    \spo[8]_INST_0_i_25 
       (.I0(\spo[8]_INST_0_i_46_n_0 ),
        .I1(a[7]),
        .I2(\spo[8]_INST_0_i_32_n_0 ),
        .I3(a[6]),
        .I4(\spo[8]_INST_0_i_47_n_0 ),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_26 
       (.I0(\spo[9]_INST_0_i_55_n_0 ),
        .I1(\spo[8]_INST_0_i_48_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_49_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_50_n_0 ),
        .O(\spo[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_27 
       (.I0(\spo[8]_INST_0_i_51_n_0 ),
        .I1(\spo[9]_INST_0_i_60_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_52_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_53_n_0 ),
        .O(\spo[8]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_28 
       (.I0(\spo[8]_INST_0_i_54_n_0 ),
        .I1(\spo[8]_INST_0_i_55_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_57_n_0 ),
        .O(\spo[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_29 
       (.I0(\spo[9]_INST_0_i_71_n_0 ),
        .I1(\spo[8]_INST_0_i_54_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_55_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_56_n_0 ),
        .O(\spo[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_8_n_0 ),
        .I1(\spo[8]_INST_0_i_9_n_0 ),
        .I2(a[11]),
        .I3(\spo[8]_INST_0_i_10_n_0 ),
        .I4(a[9]),
        .I5(\spo[8]_INST_0_i_11_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_30 
       (.I0(\spo[8]_INST_0_i_57_n_0 ),
        .I1(\spo[9]_INST_0_i_55_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_48_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_58_n_0 ),
        .O(\spo[8]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00280000)) 
    \spo[8]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \spo[8]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_33 
       (.I0(\spo[8]_INST_0_i_40_n_0 ),
        .I1(\spo[8]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_42_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_43_n_0 ),
        .O(\spo[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_34 
       (.I0(\spo[8]_INST_0_i_44_n_0 ),
        .I1(\spo[9]_INST_0_i_56_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_45_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_46_n_0 ),
        .O(\spo[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_35 
       (.I0(\spo[8]_INST_0_i_50_n_0 ),
        .I1(\spo[9]_INST_0_i_59_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_60_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_61_n_0 ),
        .O(\spo[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_36 
       (.I0(\spo[8]_INST_0_i_57_n_0 ),
        .I1(\spo[9]_INST_0_i_55_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_48_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_49_n_0 ),
        .O(\spo[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000022000000440)) 
    \spo[8]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h1110100210121004)) 
    \spo[8]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000011000000000)) 
    \spo[8]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_12_n_0 ),
        .I1(\spo[8]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(\spo[8]_INST_0_i_14_n_0 ),
        .I4(a[10]),
        .I5(\spo[8]_INST_0_i_15_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h422000000002A8A8)) 
    \spo[8]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000848401)) 
    \spo[8]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hA888891000000000)) 
    \spo[8]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h1404040404242040)) 
    \spo[8]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000990)) 
    \spo[8]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010400E1E)) 
    \spo[8]_INST_0_i_45 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h8000044000000000)) 
    \spo[8]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000028)) 
    \spo[8]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    \spo[8]_INST_0_i_48 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000044288888880)) 
    \spo[8]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[10]),
        .I1(\spo[8]_INST_0_i_16_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(a[9]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000060001FE)) 
    \spo[8]_INST_0_i_50 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000022000000000)) 
    \spo[8]_INST_0_i_51 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001100000)) 
    \spo[8]_INST_0_i_52 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h5556001400000000)) 
    \spo[8]_INST_0_i_53 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0220000000000000)) 
    \spo[8]_INST_0_i_54 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000099022222228)) 
    \spo[8]_INST_0_i_55 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000140001)) 
    \spo[8]_INST_0_i_56 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8002800000000)) 
    \spo[8]_INST_0_i_57 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h2020202020606009)) 
    \spo[8]_INST_0_i_58 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_58_n_0 ));
  MUXF7 \spo[8]_INST_0_i_6 
       (.I0(\spo[8]_INST_0_i_18_n_0 ),
        .I1(\spo[8]_INST_0_i_19_n_0 ),
        .O(\spo[8]_INST_0_i_6_n_0 ),
        .S(a[9]));
  MUXF7 \spo[8]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_20_n_0 ),
        .I1(\spo[8]_INST_0_i_21_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_22_n_0 ),
        .I1(\spo[8]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_37_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_38_n_0 ),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_9 
       (.I0(\spo[8]_INST_0_i_24_n_0 ),
        .I1(\spo[8]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_41_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_42_n_0 ),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .I2(\spo[9]_INST_0_i_2_n_0 ),
        .I3(a[12]),
        .I4(\spo[9]_INST_0_i_3_n_0 ),
        .O(\^spo [9]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[10]),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .I2(a[11]),
        .I3(\spo[9]_INST_0_i_5_n_0 ),
        .I4(a[9]),
        .I5(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  MUXF8 \spo[9]_INST_0_i_10 
       (.I0(\spo[9]_INST_0_i_33_n_0 ),
        .I1(\spo[9]_INST_0_i_34_n_0 ),
        .O(\spo[9]_INST_0_i_10_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hCC4DCD44444C4C42)) 
    \spo[9]_INST_0_i_100 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h06410364642E660A)) 
    \spo[9]_INST_0_i_101 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAABA9061C)) 
    \spo[9]_INST_0_i_102 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hB1B1991939B3B39C)) 
    \spo[9]_INST_0_i_103 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222626229)) 
    \spo[9]_INST_0_i_104 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h00000002ABA9061C)) 
    \spo[9]_INST_0_i_105 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h0000099000000000)) 
    \spo[9]_INST_0_i_106 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_11 
       (.I0(\spo[9]_INST_0_i_35_n_0 ),
        .I1(\spo[9]_INST_0_i_36_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_37_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_38_n_0 ),
        .O(\spo[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_12 
       (.I0(\spo[9]_INST_0_i_39_n_0 ),
        .I1(\spo[9]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_41_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_42_n_0 ),
        .O(\spo[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_13 
       (.I0(\spo[9]_INST_0_i_43_n_0 ),
        .I1(\spo[9]_INST_0_i_44_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_45_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_46_n_0 ),
        .O(\spo[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_14 
       (.I0(\spo[9]_INST_0_i_47_n_0 ),
        .I1(\spo[9]_INST_0_i_48_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_49_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_50_n_0 ),
        .O(\spo[9]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[9]_INST_0_i_15 
       (.I0(\spo[9]_INST_0_i_51_n_0 ),
        .I1(a[6]),
        .I2(\spo[9]_INST_0_i_52_n_0 ),
        .I3(a[5]),
        .I4(\spo[9]_INST_0_i_53_n_0 ),
        .O(\spo[9]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[9]_INST_0_i_16 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_17 
       (.I0(\spo[9]_INST_0_i_54_n_0 ),
        .I1(\spo[9]_INST_0_i_55_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_56_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_57_n_0 ),
        .O(\spo[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_18 
       (.I0(\spo[9]_INST_0_i_58_n_0 ),
        .I1(\spo[9]_INST_0_i_59_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_60_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_61_n_0 ),
        .O(\spo[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_19 
       (.I0(\spo[9]_INST_0_i_62_n_0 ),
        .I1(\spo[9]_INST_0_i_63_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_64_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_65_n_0 ),
        .O(\spo[9]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_7_n_0 ),
        .I1(\spo[9]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[9]_INST_0_i_9_n_0 ),
        .I4(a[9]),
        .I5(\spo[9]_INST_0_i_10_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_20 
       (.I0(\spo[9]_INST_0_i_66_n_0 ),
        .I1(\spo[9]_INST_0_i_67_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_68_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_69_n_0 ),
        .O(\spo[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_21 
       (.I0(\spo[9]_INST_0_i_70_n_0 ),
        .I1(\spo[9]_INST_0_i_71_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_69_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_72_n_0 ),
        .O(\spo[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_22 
       (.I0(\spo[9]_INST_0_i_73_n_0 ),
        .I1(\spo[9]_INST_0_i_74_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_75_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_76_n_0 ),
        .O(\spo[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_23 
       (.I0(\spo[9]_INST_0_i_72_n_0 ),
        .I1(\spo[9]_INST_0_i_73_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_74_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_75_n_0 ),
        .O(\spo[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_24 
       (.I0(\spo[9]_INST_0_i_76_n_0 ),
        .I1(\spo[9]_INST_0_i_62_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_63_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_64_n_0 ),
        .O(\spo[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_25 
       (.I0(\spo[9]_INST_0_i_65_n_0 ),
        .I1(\spo[9]_INST_0_i_66_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_67_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_68_n_0 ),
        .O(\spo[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_26 
       (.I0(\spo[9]_INST_0_i_69_n_0 ),
        .I1(\spo[9]_INST_0_i_72_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_73_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_74_n_0 ),
        .O(\spo[9]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_27 
       (.I0(\spo[9]_INST_0_i_68_n_0 ),
        .I1(\spo[9]_INST_0_i_69_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_72_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_73_n_0 ),
        .O(\spo[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_28 
       (.I0(\spo[9]_INST_0_i_74_n_0 ),
        .I1(\spo[9]_INST_0_i_75_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_76_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_62_n_0 ),
        .O(\spo[9]_INST_0_i_28_n_0 ));
  MUXF7 \spo[9]_INST_0_i_29 
       (.I0(\spo[9]_INST_0_i_77_n_0 ),
        .I1(\spo[9]_INST_0_i_78_n_0 ),
        .O(\spo[9]_INST_0_i_29_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_11_n_0 ),
        .I1(\spo[9]_INST_0_i_12_n_0 ),
        .I2(a[11]),
        .I3(\spo[9]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(\spo[9]_INST_0_i_14_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  MUXF7 \spo[9]_INST_0_i_30 
       (.I0(\spo[9]_INST_0_i_79_n_0 ),
        .I1(\spo[9]_INST_0_i_80_n_0 ),
        .O(\spo[9]_INST_0_i_30_n_0 ),
        .S(a[8]));
  MUXF7 \spo[9]_INST_0_i_31 
       (.I0(\spo[9]_INST_0_i_81_n_0 ),
        .I1(\spo[9]_INST_0_i_82_n_0 ),
        .O(\spo[9]_INST_0_i_31_n_0 ),
        .S(a[8]));
  MUXF7 \spo[9]_INST_0_i_32 
       (.I0(\spo[9]_INST_0_i_83_n_0 ),
        .I1(\spo[9]_INST_0_i_84_n_0 ),
        .O(\spo[9]_INST_0_i_32_n_0 ),
        .S(a[8]));
  MUXF7 \spo[9]_INST_0_i_33 
       (.I0(\spo[9]_INST_0_i_85_n_0 ),
        .I1(\spo[9]_INST_0_i_86_n_0 ),
        .O(\spo[9]_INST_0_i_33_n_0 ),
        .S(a[8]));
  MUXF7 \spo[9]_INST_0_i_34 
       (.I0(\spo[9]_INST_0_i_87_n_0 ),
        .I1(\spo[9]_INST_0_i_88_n_0 ),
        .O(\spo[9]_INST_0_i_34_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000A10006000000)) 
    \spo[9]_INST_0_i_35 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h6000080000005000)) 
    \spo[9]_INST_0_i_36 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \spo[9]_INST_0_i_37 
       (.I0(\spo[9]_INST_0_i_90_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_91_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_92_n_0 ),
        .O(\spo[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_38 
       (.I0(\spo[9]_INST_0_i_93_n_0 ),
        .I1(\spo[9]_INST_0_i_94_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_95_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_96_n_0 ),
        .O(\spo[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0A00000010000600)) 
    \spo[9]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(a[7]),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_16_n_0 ),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000600085000000)) 
    \spo[9]_INST_0_i_40 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_41 
       (.I0(\spo[9]_INST_0_i_97_n_0 ),
        .I1(\spo[9]_INST_0_i_98_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_99_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_100_n_0 ),
        .O(\spo[9]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_42 
       (.I0(\spo[9]_INST_0_i_101_n_0 ),
        .I1(\spo[9]_INST_0_i_102_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_103_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_91_n_0 ),
        .O(\spo[9]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_43 
       (.I0(\spo[9]_INST_0_i_92_n_0 ),
        .I1(\spo[9]_INST_0_i_93_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_94_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_95_n_0 ),
        .O(\spo[9]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_44 
       (.I0(\spo[9]_INST_0_i_96_n_0 ),
        .I1(\spo[9]_INST_0_i_97_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_98_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_99_n_0 ),
        .O(\spo[9]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_45 
       (.I0(\spo[9]_INST_0_i_95_n_0 ),
        .I1(\spo[9]_INST_0_i_96_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_97_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_98_n_0 ),
        .O(\spo[9]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_46 
       (.I0(\spo[9]_INST_0_i_99_n_0 ),
        .I1(\spo[9]_INST_0_i_100_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_101_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_102_n_0 ),
        .O(\spo[9]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_47 
       (.I0(\spo[9]_INST_0_i_100_n_0 ),
        .I1(\spo[9]_INST_0_i_101_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_102_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_103_n_0 ),
        .O(\spo[9]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_48 
       (.I0(\spo[9]_INST_0_i_91_n_0 ),
        .I1(\spo[9]_INST_0_i_92_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_93_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_94_n_0 ),
        .O(\spo[9]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_49 
       (.I0(\spo[9]_INST_0_i_103_n_0 ),
        .I1(\spo[9]_INST_0_i_91_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_92_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_93_n_0 ),
        .O(\spo[9]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_5 
       (.I0(\spo[9]_INST_0_i_17_n_0 ),
        .I1(\spo[9]_INST_0_i_18_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_20_n_0 ),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_50 
       (.I0(\spo[9]_INST_0_i_94_n_0 ),
        .I1(\spo[9]_INST_0_i_95_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_96_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_104_n_0 ),
        .O(\spo[9]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h11191914)) 
    \spo[9]_INST_0_i_51 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[9]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFC800000)) 
    \spo[9]_INST_0_i_52 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[9]_INST_0_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000221)) 
    \spo[9]_INST_0_i_53 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[9]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h9484848484A4A040)) 
    \spo[9]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0002020444454540)) 
    \spo[9]_INST_0_i_55 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h00000002A8888910)) 
    \spo[9]_INST_0_i_56 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h2211221126116108)) 
    \spo[9]_INST_0_i_57 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h8101014101410110)) 
    \spo[9]_INST_0_i_58 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h5550402800000002)) 
    \spo[9]_INST_0_i_59 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_21_n_0 ),
        .I1(\spo[9]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_24_n_0 ),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4445454000080802)) 
    \spo[9]_INST_0_i_60 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h2222220880000440)) 
    \spo[9]_INST_0_i_61 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0000044333333331)) 
    \spo[9]_INST_0_i_62 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h8A0A28A0A2CA4A29)) 
    \spo[9]_INST_0_i_63 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hD4D1D0C5C5D8DC53)) 
    \spo[9]_INST_0_i_64 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h88098904444C4C40)) 
    \spo[9]_INST_0_i_65 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h2641036CECAEEE8A)) 
    \spo[9]_INST_0_i_66 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h333333311103021C)) 
    \spo[9]_INST_0_i_67 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hA82A0A82A0A9557C)) 
    \spo[9]_INST_0_i_68 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h417658370572C376)) 
    \spo[9]_INST_0_i_69 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_7 
       (.I0(\spo[9]_INST_0_i_25_n_0 ),
        .I1(\spo[9]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[9]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_28_n_0 ),
        .O(\spo[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1918180A181A1884)) 
    \spo[9]_INST_0_i_70 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h1111111000000224)) 
    \spo[9]_INST_0_i_71 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040C4C403)) 
    \spo[9]_INST_0_i_72 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFBFAA1388AA2280A)) 
    \spo[9]_INST_0_i_73 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h1D0D0D1C1C3D2DC5)) 
    \spo[9]_INST_0_i_74 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h1818909098393984)) 
    \spo[9]_INST_0_i_75 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h727064263673716C)) 
    \spo[9]_INST_0_i_76 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_77 
       (.I0(\spo[9]_INST_0_i_105_n_0 ),
        .I1(\spo[9]_INST_0_i_68_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_54_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_106_n_0 ),
        .O(\spo[9]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_78 
       (.I0(\spo[9]_INST_0_i_63_n_0 ),
        .I1(\spo[9]_INST_0_i_99_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_65_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_101_n_0 ),
        .O(\spo[9]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_79 
       (.I0(\spo[9]_INST_0_i_64_n_0 ),
        .I1(\spo[9]_INST_0_i_65_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_66_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_67_n_0 ),
        .O(\spo[9]_INST_0_i_79_n_0 ));
  MUXF8 \spo[9]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_29_n_0 ),
        .I1(\spo[9]_INST_0_i_30_n_0 ),
        .O(\spo[9]_INST_0_i_8_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_80 
       (.I0(\spo[9]_INST_0_i_75_n_0 ),
        .I1(\spo[9]_INST_0_i_76_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_62_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_63_n_0 ),
        .O(\spo[9]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h000083000C000000)) 
    \spo[9]_INST_0_i_81 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h0000100060000800)) 
    \spo[9]_INST_0_i_82 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0A50000001000000)) 
    \spo[9]_INST_0_i_83 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[9]_INST_0_i_89_n_0 ),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h0600000000008500)) 
    \spo[9]_INST_0_i_84 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0800000030000C00)) 
    \spo[9]_INST_0_i_85 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hA100000000006000)) 
    \spo[9]_INST_0_i_86 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h800A000050010000)) 
    \spo[9]_INST_0_i_87 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[9]_INST_0_i_89_n_0 ),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h1000060008000000)) 
    \spo[9]_INST_0_i_88 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[9]_INST_0_i_89_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \spo[9]_INST_0_i_89 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[9]_INST_0_i_89_n_0 ));
  MUXF8 \spo[9]_INST_0_i_9 
       (.I0(\spo[9]_INST_0_i_31_n_0 ),
        .I1(\spo[9]_INST_0_i_32_n_0 ),
        .O(\spo[9]_INST_0_i_9_n_0 ),
        .S(a[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000014)) 
    \spo[9]_INST_0_i_90 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[9]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h015458170550C156)) 
    \spo[9]_INST_0_i_91 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h577401100002AAAA)) 
    \spo[9]_INST_0_i_92 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h6060220A4A6CE4A3)) 
    \spo[9]_INST_0_i_93 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h8989899898B9AD85)) 
    \spo[9]_INST_0_i_94 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h1C1C94949C3D3DC4)) 
    \spo[9]_INST_0_i_95 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h5050440616537164)) 
    \spo[9]_INST_0_i_96 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h0A1A0A4A0A0A0A2D)) 
    \spo[9]_INST_0_i_97 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h002AAC43BB913BB9)) 
    \spo[9]_INST_0_i_98 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h9091908585D89C51)) 
    \spo[9]_INST_0_i_99 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_99_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
