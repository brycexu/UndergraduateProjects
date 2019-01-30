`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/02 14:41:32
// Design Name: 
// Module Name: mux4to1_32
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
module mux4to1_32(
    input [31:0]d0,
    input [31:0]d1,
    input [31:0]d2,
    input [31:0]d3,
    input [31:0]d4,
    input [2:0]select,
    output [31:0]out
);
    reg [31:0]out;
    always @ (select or d0 or d1 or d2 or d3 or d4) begin
        case(select)
            3'b000:out = d0;
            3'b001:out = d1;
            3'b010:out = d2;
            3'b011:out = d3;
            3'b100:out = d4;
            default:out = 32'd0;
        endcase
    end
endmodule
