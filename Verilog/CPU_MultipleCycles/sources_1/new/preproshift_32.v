`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/14 12:39:10
// Design Name: 
// Module Name: preproshift_32
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
module preproshift_32(
    input [31:0] b,
    output [31:0] out
);
    wire [32:0] temp;
    wire [32:0] judge;
    wire temp2;
    wire temp2_;
    assign temp[0] = 0;
    assign judge[0] = 0;
    //从加法器中获得灵感,如果在b中出现2个及以上的1,judge便不会全为0
    generate
    genvar i;
    for(i=0;i<32;i=i+1)
        begin:preprocessing
            xor C1(temp[i+1],b[i],temp[i]);
            and A1(judge[i+1],b[i],temp[i]);
        end
    endgenerate
    //如果judge全为0,temp2为0,否则为1
    or B1(temp2,judge[32],judge[31],judge[30],judge[29],judge[28],judge[27],judge[26],judge[25],judge[24],judge[23],judge[22],
    judge[21],judge[20],judge[19],judge[18],judge[17],judge[16],judge[15],judge[14],judge[13],judge[12],judge[11],judge[10],
    judge[9],judge[8],judge[7],judge[6],judge[5],judge[4],judge[3],judge[2],judge[1],judge[0]);
    not D1(temp2_,temp2);
    wire [31:0] temp3;
    assign temp3 = {32{temp2_}};
    //用temp2的反和b逐位取与,得到处理后的b
    AND_perbit_32 object(b,temp3,out);
endmodule
