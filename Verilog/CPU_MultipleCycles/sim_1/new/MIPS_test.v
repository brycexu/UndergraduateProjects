`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 09:04:25
// Design Name: 
// Module Name: MIPS_test
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
module MIPS_test();
    reg clk;
    reg reset;
    wire [31:0]PC;
    wire [31:0]Instr;
    wire [3:0]state;
    wire [4:0]A1;
    wire [4:0]A2;
    wire [4:0]A3;
    wire [31:0]WD3;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire [31:0]SrcA;
    wire [31:0]SrcB;
    wire [31:0]ALUResult;
    wire [15:0]MA;
    wire [31:0]MWD;
    wire RegWrite;
    wire MemtoReg;
    wire MemWrite;
    wire Zero;
    wire Shamt;
    wire [31:0]RealB;
    wire [1:0]ALUSrcB;
    wire [31:0]A;
    wire [31:0]B;
    
    initial begin
        clk = 0;
        #5;
        reset = 1;
        #10;
        reset = 0;
    end
    
    always begin
        #10;
        clk = ~clk;
    end
    
    MIPS_MC dut(clk,reset,PC,Instr,state,A1,A2,A3,WD3,RD1,RD2,SrcA,SrcB,ALUResult,MA,MWD,RegWrite,MemtoReg,MemWrite,Zero,Shamt,RealB,ALUSrcB,A,B);
endmodule
