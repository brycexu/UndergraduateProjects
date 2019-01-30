`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 14:42:17
// Design Name: 
// Module Name: ALU_decoder
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
module ALU_decoder(
    input [5:0]Funct,
    input [1:0]ALUOp,
    output Shamt,
    output [5:0]ALUControl
);
    reg [5:0]ALUControl;
    reg Shamt;
    always @ (Funct or ALUOp) begin
       case(ALUOp)
           2'b00:begin
               ALUControl <= 6'b000010;
               Shamt = 1'd0;
               end
           2'b01:begin
               ALUControl <= 6'b001010;
               Shamt = 1'd0;
               end
           default:case(Funct)
               6'b100000:begin
                   ALUControl <= 6'b000010; //add
                   Shamt = 1'd0;
                   end
               6'b100010:begin
                   ALUControl <= 6'b001010; //sub
                   Shamt = 1'd0;
                   end
               6'b100100:begin
                   ALUControl <= 6'b000000; //and
                   Shamt = 1'd0;
                   end
               6'b100101:begin
                   ALUControl <= 6'b000001; //or
                   Shamt = 1'd0;
                   end
               6'b101010:begin
                   ALUControl <= 6'b001011; //slt
                   Shamt = 1'd0;
                   end
               6'b100001:begin
                   ALUControl <= 6'b001000; //A and B'
                   Shamt = 1'd0;
                   end
               6'b100011:begin
                   ALUControl <= 6'b001001; //A or B'
                   Shamt = 1'd0;
                   end
               6'b100111:begin
                   ALUControl <= 6'b000100; //not
                   Shamt = 1'd0;
                   end
               6'b100110:begin
                   ALUControl <= 6'b000101; //xor
                   Shamt = 1'd0;
                   end
               //6'b011000:ALUControl <= 6'b000110; 
               6'b000000:begin
                   ALUControl <= 6'b000111; //left shift
                   Shamt = 1'd1;
                   end
               6'b000010:begin
                   ALUControl <= 6'b010111; //logic right shift
                   Shamt = 1'd1;
                   end
               6'b000011:begin
                   ALUControl <= 6'b100111; //algor right shift
                   Shamt = 1'd1;
                   end
               6'b000001:begin
                   ALUControl <= 6'b000110; //mul
                   Shamt = 1'd0;
                   end
               default:  begin
                   ALUControl <= 6'bxxxxxx;
                   Shamt = 1'd0;
                   end
           endcase
       endcase
    end
endmodule
