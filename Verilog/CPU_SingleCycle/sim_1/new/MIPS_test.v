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
    reg address;
    wire [3:0]state;
    wire [31:0]RD;
    wire [31:0]Adr;
    wire ALUSrcA;
    wire [2:0]ALUSrcB;
    wire [31:0]ALUResult;
    wire [31:0]SrcA;
    wire [31:0]SrcB;
    wire [1:0]PCSrc;
    wire MemWrite;
    wire [31:0]WD;
    wire [31:0]PC_;
    wire lorD;
    wire [31:0]ALUOut;
    wire PCEn;
    wire [31:0]PC;
    wire [31:0]Adr_temp;
    wire MemtoReg;
    wire [31:0]WD3;
    wire [31:0]Data;
    wire [31:0]B;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire [4:0]A1;
    wire [4:0]A2;
    wire [4:0]A3;
    wire RegWrite;
    wire [31:0]data_;
    
    initial begin
        clk = 0;
        address = 0;
        #5 reset = 1;
        #50 reset = 0;
    end
    
    always begin
        #50;
        clk = ~clk;
    end
    
    always begin
        #60;
        address = 1;
        #50;
        address = 0;
        //PC = 32'd4;
        #340;
        address = 1;
        #100;
        address = 0;
        //PC = 32'd8;
        #300;
        address = 1;
        #100;
        address = 0;
        //PC = 32'd12;
        #400;
        address = 1;
        #100;
        address = 0;
        #300;
        address = 1;
        #100;
        address = 0;
        #300;
        address = 1;
        #100;
        address = 0;
        #300;
        address = 1;
        #100;
        address = 0;
        #200;
    end
    
    MIPS dut(clk,reset,address,state,RD,Adr,ALUSrcA,ALUSrcB,ALUResult,SrcA,SrcB,PCSrc,MemWrite,WD,PC_,lorD,ALUOut,PCEn,PC,Adr_temp,MemtoReg,WD3,Data,B,RD1,RD2,A1,A2,A3,RegWrite,data_);
endmodule
