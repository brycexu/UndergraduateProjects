`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/02 14:59:45
// Design Name: 
// Module Name: mux3to1_32
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


module mux3to1_32(
    input [31:0]d0,
    input [31:0]d1,
    input [31:0]d2,
    input [1:0]select,
    output [31:0]out
);
    reg [31:0]out;
    always @(select or d0 or d1 or d2) begin
       case(select)
           2'b00:out=d0;
           2'b01:out=d1;
           2'b10:out=d2;
           default:out=32'd0;
       endcase 
    end
endmodule
