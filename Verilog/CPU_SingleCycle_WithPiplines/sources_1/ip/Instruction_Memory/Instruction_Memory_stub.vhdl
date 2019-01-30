-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Sat Jul 07 16:39:40 2018
-- Host        : 004 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Administrator/Desktop/Single_pipline/Single_pipline.srcs/sources_1/ip/Instruction_Memory/Instruction_Memory_stub.vhdl
-- Design      : Instruction_Memory
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruction_Memory is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Instruction_Memory;

architecture stub of Instruction_Memory is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[13:0],spo[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0,Vivado 2015.2";
begin
end;
