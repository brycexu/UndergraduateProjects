`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 14:20:24
// Design Name: 
// Module Name: Controller
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
module Controller(
    input [5:0]Op,
    input [5:0]Funct,
    output PCSrc,
    output Jump,
    output MemtoReg,
    output MemWrite,
    output Branch,
    output Branch2,
    output ALUSrc,
    output RegDst,
    output RegWrite,
    output NP,
    output Shamt,
    output [5:0]ALUControl
);
    reg [10:0]controls;
    wire [1:0]ALUOp;
    assign {RegWrite,RegDst,ALUSrc,Branch,Branch2,MemWrite,MemtoReg,Jump,NP,ALUOp[1],ALUOp[0]} = controls;
    always @ (Op or Funct) begin
        case(Op)
            6'b000000:controls <= 11'b11000000010; //R-type
            6'b100011:controls <= 11'b10100010000; //LW
            6'b101011:controls <= 11'b00100100000; //SW
            6'b000100:controls <= 11'b00010000001; //BEQ
            6'b000101:controls <= 11'b00001000001; //BNE
            6'b001000:controls <= 11'b10100000000; //ADDI
            6'b000010:controls <= 11'b00000001000; //J
            6'b011100:controls <= 11'b11000000010; //Mul
            6'b111000:controls <= 11'b00000000100; //NP
            default:  controls <= 11'bxxxxxxxxxxx; //Illegal Op
        endcase
    end
    ALU_decoder decoder(Funct,ALUOp,Shamt,ALUControl);
endmodule
