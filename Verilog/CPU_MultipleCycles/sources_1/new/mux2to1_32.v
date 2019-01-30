`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/02 13:48:51
// Design Name: 
// Module Name: mux2to1_32
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
module mux2to1_32(
    input [31:0]d0,
    input [31:0]d1,
    input select,
    output [31:0]out
);
    reg [31:0]out;
    always @ (select or d0 or d1) begin
        case(select)
            1'd0:out = d0;
            1'd1:out = d1;
        endcase
    end
endmodule
