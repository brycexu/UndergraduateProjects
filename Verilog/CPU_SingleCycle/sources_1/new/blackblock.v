`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 08:38:43
// Design Name: 
// Module Name: blackblock
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


module blackblock(
    input [15:0] pik,pk_1j,gik,gk_1j,
    output [15:0] pij,gij
);
    wire [15:0] temp;
    generate
    genvar m;
        for(m=0;m<16;m=m+1)
        begin: and_or1
            and pij_m(pij[m],pik[m],pk_1j[m]);
            and temp_m(temp[m],pik[m],gk_1j[m]);
            or gij_m(gij[m],temp[m],gik[m]);
        end
    endgenerate
endmodule