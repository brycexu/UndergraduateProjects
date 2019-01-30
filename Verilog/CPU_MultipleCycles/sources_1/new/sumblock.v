`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 08:38:56
// Design Name: 
// Module Name: sumblock
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
module sumblock(
    input [31:0] a,b,g,
    output [31:0] sum
);
    wire [31:0] temp;
    generate
    genvar i;
        for(i=0;i<32;i=i+1)
        begin: xor1
            xor temp_i(temp[i],a[i],b[i]);
            xor sum_i(sum[i],temp[i],g[i]);
        end
    endgenerate
endmodule