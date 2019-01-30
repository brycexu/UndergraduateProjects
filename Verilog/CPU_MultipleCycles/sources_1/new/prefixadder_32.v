`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 08:39:12
// Design Name: 
// Module Name: prefixadder_32
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
module prefixadder_32(
    input [31:0] a,b,
    input cin,
    output [31:0] sum,
    output cout
);
    wire [30:0] p,g;
    wire [15:0] block1_p,block2_p,block3_p,block4_p,block5_p;
    wire [15:0] block1_g,block2_g,block3_g,block4_g,block5_g;
    wire [31:0] g_prevtotal;
    //最上层
    topblock top(a[30:0],b[30:0],p,g);
    //中间层
    blackblock block1(
        {p[30],p[28],p[26],p[24],p[22],p[20],p[18],p[16],p[14],p[12],p[10],p[8],p[6],p[4],p[2],p[0]},
        {p[29],p[27],p[25],p[23],p[21],p[19],p[17],p[15],p[13],p[11],p[9],p[7],p[5],p[3],p[1],1'b0},
        {g[30],g[28],g[26],g[24],g[22],g[20],g[18],g[16],g[14],g[12],g[10],g[8],g[6],g[4],g[2],g[0]},
        {g[29],g[27],g[25],g[23],g[21],g[19],g[17],g[15],g[13],g[11],g[9],g[7],g[5],g[3],g[1],cin},
        block1_p,block1_g
    );
    blackblock block2(
        {block1_p[15],p[29],block1_p[13],p[25],block1_p[11],p[21],block1_p[9],p[17],block1_p[7],p[13],block1_p[5],p[9],block1_p[3],p[5],block1_p[1],p[1]},
        {block1_p[14],block1_p[14],block1_p[12],block1_p[12],block1_p[10],block1_p[10],block1_p[8],block1_p[8],block1_p[6],block1_p[6],block1_p[4],block1_p[4],block1_p[2],block1_p[2],block1_p[0],block1_p[0]},
        {block1_g[15],g[29],block1_g[13],g[25],block1_g[11],g[21],block1_g[9],g[17],block1_g[7],g[13],block1_g[5],g[9],block1_g[3],g[5],block1_g[1],g[1]},
        {block1_g[14],block1_g[14],block1_g[12],block1_g[12],block1_g[10],block1_g[10],block1_g[8],block1_g[8],block1_g[6],block1_g[6],block1_g[4],block1_g[4],block1_g[2],block1_g[2],block1_g[0],block1_g[0]},
        block2_p,block2_g
    );
    blackblock block3(
        {block2_p[15],block2_p[14],block1_p[14],p[27],block2_p[11],block2_p[10],block1_p[10],p[19],block2_p[7],block2_p[6],block1_p[6],p[11],block2_p[3],block2_p[2],block1_p[2],p[3]},
        {block2_p[13],block2_p[13],block2_p[13],block2_p[13],block2_p[9],block2_p[9],block2_p[9],block2_p[9],block2_p[5],block2_p[5],block2_p[5],block2_p[5],block2_p[1],block2_p[1],block2_p[1],block2_p[1]},
        {block2_g[15],block2_g[14],block1_g[14],g[27],block2_g[11],block2_g[10],block1_g[10],g[19],block2_g[7],block2_g[6],block1_g[6],g[11],block2_g[3],block2_g[2],block1_g[2],g[3]},
        {block2_g[13],block2_g[13],block2_g[13],block2_g[13],block2_g[9],block2_g[9],block2_g[9],block2_g[9],block2_g[5],block2_g[5],block2_g[5],block2_g[5],block2_g[1],block2_g[1],block2_g[1],block2_g[1]},
        block3_p,block3_g
    );
    blackblock block4(
        {block3_p[15],block3_p[14],block3_p[13],block3_p[12],block2_p[13],block2_p[12],block1_p[12],p[23],block3_p[7],block3_p[6],block3_p[5],block3_p[4],block2_p[5],block2_p[4],block1_p[4],p[7]},
        {block3_p[11],block3_p[11],block3_p[11],block3_p[11],block3_p[11],block3_p[11],block3_p[11],block3_p[11],block3_p[3],block3_p[3],block3_p[3],block3_p[3],block3_p[3],block3_p[3],block3_p[3],block3_p[3]},
        {block3_g[15],block3_g[14],block3_g[13],block3_g[12],block2_g[13],block2_g[12],block1_g[12],g[23],block3_g[7],block3_g[6],block3_g[5],block3_g[4],block2_g[5],block2_g[4],block1_g[4],g[7]},
        {block3_g[11],block3_g[11],block3_g[11],block3_g[11],block3_g[11],block3_g[11],block3_g[11],block3_g[11],block3_g[3],block3_g[3],block3_g[3],block3_g[3],block3_g[3],block3_g[3],block3_g[3],block3_g[3]},
        block4_p,block4_g
    );
    blackblock block5(
        {block4_p[15],block4_p[14],block4_p[13],block4_p[12],block4_p[11],block4_p[10],block4_p[9],block4_p[8],block3_p[11],block3_p[10],block3_p[9],block3_p[8],block2_p[9],block2_p[8],block1_p[8],p[15]},
        {block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7],block4_p[7]},
        {block4_g[15],block4_g[14],block4_g[13],block4_g[12],block4_g[11],block4_g[10],block4_g[9],block4_g[8],block3_g[11],block3_g[10],block3_g[9],block3_g[8],block2_g[9],block2_g[8],block1_g[8],g[15]},
        {block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7],block4_g[7]},
        block5_p,block5_g
    );
    assign g_prevtotal = {block5_g[15:0],block4_g[7:0],block3_g[3:0],block2_g[1:0],block1_g[0],cin};
    //最下层
    sumblock sum1(a,b,g_prevtotal,sum);
    //cout模块
    wire temp1;
    wire temp2;
    wire temp3;
    and A1(temp1,a[31],b[31]);
    or B1(temp2,a[31],b[31]);
    and A2(temp3,temp2,g_prevtotal[31]);
    or B2(cout,temp1,temp3);
endmodule