`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 10:57:54
// Design Name: 
// Module Name: multiplier
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


module multiplier(A,B,Z,S1);
input [15:0]A,B;
output [31:0]Z;
output [16:0]S1;

//wire [15:0] S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15;
wire [16:0] S[16:0];
assign S[0]=17'b0;

//the first layer of multiplyer
//multiplier_16bit multiplier_16bit_0(A,B[0],S[0],S[1],Z[0]);//

    generate
    genvar q;
        for(q=0;q<15;q=q+1)
        begin: multiplier_all
            multiplier_16bit multiplier_16bit_q(A,B[q],S[q],S[q+1],Z[q]);
        end 
    endgenerate 

last_block last_block_(A,B[15],S[15],S[16],Z[15]);

wire [16:0]S1;
assign S1=S[15];

    generate
    genvar s;
        for(s=16;s<32;s=s+1)
        begin: assign_Z_16_31 
            assign Z[s]=S[16][s-16];
        end
    endgenerate
    
endmodule