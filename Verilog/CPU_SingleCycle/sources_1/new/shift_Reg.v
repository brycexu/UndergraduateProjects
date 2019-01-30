`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/02 13:06:08
// Design Name: 
// Module Name: shift_Reg
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
module shift_Reg(
    input clk,
    input reset,
    input [31:0]in,
    output [31:0]out
);
    reg [31:0]store;
    reg count;
    always @ (posedge clk or posedge reset) begin
        if(reset) begin
            store = 32'd0;
            count = 0;
        end
//        else begin
//            if(!count) begin
//                store = in;
//                count = 1;
//            end
//            else
//                count = 0;
//        end
        else
            store = in;
    end
    assign out = store;
endmodule
