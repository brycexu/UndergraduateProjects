`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 15:29:18
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module test();
    reg clk;
    reg reset;
    wire [31:0]PC;
    wire [31:0]Instr;
    wire [5:0]Op;
    wire [5:0]Funct;
    wire [4:0]A1;
    wire [4:0]A2;
    wire [4:0]A3;
    wire RegWrite;
    wire [31:0]WD3;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire [31:0]SrcA;
    wire [31:0]SrcB;
    wire [31:0]ALUResult;
    wire [15:0]DA;
    wire MemWrite;
    wire [31:0]DWD;
    wire [31:0]DRD;
    wire Zero;
    wire NP;
    
    initial begin
        clk = 0;
        #5;
        reset = 1;
        #50;
        reset = 0;
    end
    
    always begin
        #50;
        clk = ~clk;
    end
    
    MIPS_SC mips(clk,reset,PC,Instr,Op,Funct,A1,A2,A3,RegWrite,WD3,RD1,RD2,SrcA,SrcB,ALUResult,DA,MemWrite,DWD,DRD,Zero,NP);
    
endmodule
