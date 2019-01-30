`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 20:31:23
// Design Name: 
// Module Name: PCShiftReg
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
module PCShiftReg(
    input clk,
    input reset,
    input enable,
    input [31:0]in,
    output [31:0]out
);
    reg [31:0]store;
    always @ (posedge clk or posedge reset) begin
       if(reset)
            store = 32'd0;
       else
           if(enable)
               store = in;
    end
    assign out = store;
endmodule
