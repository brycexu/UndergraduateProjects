`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 20:52:42
// Design Name: 
// Module Name: ShiftReg
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
module ShiftReg(
    input clk,
    input enable,
    input [31:0]in,
    output [31:0]out
);
    reg [31:0]store;
    always @ (posedge clk) begin
        if(enable)
            store = in;
    end
    assign out = store;
endmodule
