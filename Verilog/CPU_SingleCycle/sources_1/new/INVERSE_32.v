`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/11 20:04:41
// Design Name: 
// Module Name: INVERSE_32
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
module INVERSE_32(
    input [31:0] a,
    output [31:0] out
);
    generate 
    genvar i;
    for(i=0;i<32;i=i+1)
        begin:shit
            assign out[i] = a[31-i];
        end
    endgenerate
endmodule
