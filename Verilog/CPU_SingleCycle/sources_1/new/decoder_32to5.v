`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/12 19:42:51
// Design Name: 
// Module Name: decoder_32to5
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


module decoder_32to5(
    input [31:0] b,
    output [4:0] out
);
    or B1(out[0],b[0],b[2],b[4],b[6],b[8],b[10],b[12],b[14],b[16],b[18],b[20],b[22],b[24],b[26],b[28],b[30]);
    or B2(out[1],b[1],b[2],b[5],b[6],b[9],b[10],b[13],b[14],b[17],b[18],b[21],b[22],b[25],b[26],b[29],b[30]);
    or B3(out[2],b[3],b[4],b[5],b[6],b[11],b[12],b[13],b[14],b[19],b[20],b[21],b[22],b[27],b[28],b[29],b[30]);
    or B4(out[3],b[7],b[8],b[9],b[10],b[11],b[12],b[13],b[14],b[23],b[24],b[25],b[26],b[27],b[28],b[29],b[30]);
    or B5(out[4],b[15],b[16],b[17],b[18],b[19],b[20],b[21],b[22],b[23],b[24],b[25],b[26],b[27],b[28],b[29],b[30]);
endmodule
