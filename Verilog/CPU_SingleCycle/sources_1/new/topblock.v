`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 08:37:59
// Design Name: 
// Module Name: topblock
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


module topblock(
    input [30:0] a,b,
    output [30:0] p,g
);
    generate
    genvar i;
        for(i=0;i<31;i=i+1)
        begin: and_or
            or p_i(p[i],a[i],b[i]);
            and g_i(g[i],a[i],b[i]);
        end
    endgenerate
endmodule