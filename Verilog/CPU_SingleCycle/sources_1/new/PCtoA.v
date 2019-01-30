`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 10:19:31
// Design Name: 
// Module Name: PCtoA
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
module PCtoA(
    input clk,
    input reset,
    input enable,
    input [31:0]in,
    output [31:0]out
);
    reg [31:0]out;
    always @ (posedge clk) begin
        if(reset)
            out = 32'd0;
        if(enable)
            out = in;
    end
endmodule
