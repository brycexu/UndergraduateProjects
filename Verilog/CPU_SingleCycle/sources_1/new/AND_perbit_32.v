`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/11 19:35:36
// Design Name: 
// Module Name: AND_perbit_32
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
module AND_perbit_32(
    input [31:0] a,b,
    output [31:0] out
);
    generate
    genvar i;
    for(i=0;i<32;i=i+1)
        begin:shit
            and A_i(out[i],a[i],b[i]);
        end
    endgenerate
endmodule
