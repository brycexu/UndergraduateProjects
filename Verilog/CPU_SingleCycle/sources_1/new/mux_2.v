`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 08:53:24
// Design Name: 
// Module Name: mux_2bit
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


module mux_2(F2,Bn,B,BB,EN);
input F2,EN;
input[31:0]Bn, B;
output [31:0]BB;

    wire S2,S1;
    wire s;
   
   //enable the mux_2bit module
    not x0(s,F2);
    and x1(S1,EN,s);
    and x2(S2,EN,F2);
    
    mux_1bit m0(B[0],Bn[0],BB[0],S1,S2);
    mux_1bit m1(B[1],Bn[1],BB[1],S1,S2);
    mux_1bit m2(B[2],Bn[2],BB[2],S1,S2);
    mux_1bit m3(B[3],Bn[3],BB[3],S1,S2);
    mux_1bit m4(B[4],Bn[4],BB[4],S1,S2);
    mux_1bit m5(B[5],Bn[5],BB[5],S1,S2);
    mux_1bit m6(B[6],Bn[6],BB[6],S1,S2);
    mux_1bit m7(B[7],Bn[7],BB[7],S1,S2);
    mux_1bit m8(B[8],Bn[8],BB[8],S1,S2);
    mux_1bit m9(B[9],Bn[9],BB[9],S1,S2);
    mux_1bit m10(B[10],Bn[10],BB[10],S1,S2);
    mux_1bit m11(B[11],Bn[11],BB[11],S1,S2);
    mux_1bit m12(B[12],Bn[12],BB[12],S1,S2);
    mux_1bit m13(B[13],Bn[13],BB[13],S1,S2);
    mux_1bit m14(B[14],Bn[14],BB[14],S1,S2);
    mux_1bit m15(B[15],Bn[15],BB[15],S1,S2);
    mux_1bit m16(B[16],Bn[16],BB[16],S1,S2);
    mux_1bit m17(B[17],Bn[17],BB[17],S1,S2);
    mux_1bit m18(B[18],Bn[18],BB[18],S1,S2);
    mux_1bit m19(B[19],Bn[19],BB[19],S1,S2);
    mux_1bit m20(B[20],Bn[20],BB[20],S1,S2);
    mux_1bit m21(B[21],Bn[21],BB[21],S1,S2);
    mux_1bit m22(B[22],Bn[22],BB[22],S1,S2);
    mux_1bit m23(B[23],Bn[23],BB[23],S1,S2);
    mux_1bit m24(B[24],Bn[24],BB[24],S1,S2);
    mux_1bit m25(B[25],Bn[25],BB[25],S1,S2);
    mux_1bit m26(B[26],Bn[26],BB[26],S1,S2);
    mux_1bit m27(B[27],Bn[27],BB[27],S1,S2);
    mux_1bit m28(B[28],Bn[28],BB[28],S1,S2);
    mux_1bit m29(B[29],Bn[29],BB[29],S1,S2);
    mux_1bit m30(B[30],Bn[30],BB[30],S1,S2);
    mux_1bit m31(B[31],Bn[31],BB[31],S1,S2);
    
endmodule

