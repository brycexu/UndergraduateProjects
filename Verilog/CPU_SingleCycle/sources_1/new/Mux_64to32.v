`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/11 14:32:44
// Design Name: 
// Module Name: Mux_64to32
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
module Mux_64to32(
    input [31:0] a,b,
    input s,
    output[31:0] out
);
    generate
    genvar i;
    for(i=0;i<32;i=i+1)
        begin:mux
            wire temp_i1,temp_i2;
            wire s_i;
            not(s_i,s);
            and A_i1(temp_i1,a[i],s_i);
            and A_i2(temp_i2,b[i],s);
            or B_i1(out[i],temp_i1,temp_i2);
        end
    endgenerate
endmodule
