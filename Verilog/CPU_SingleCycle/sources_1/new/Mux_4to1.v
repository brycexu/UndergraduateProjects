`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/11 14:14:36
// Design Name: 
// Module Name: Mux_4to1
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
module Mux_4to1(
    input [31:0] D0,D1,D2,D3,
    input [1:0] select,
    output [31:0] out
);
    wire [31:0] select1;
    assign select1 = {32{select[1]}};
    wire [31:0] select1_;
    NOT_perbit_32 C1(select1,select1_);
    wire [31:0] select0;
    assign select0 = {32{select[0]}};
    wire [31:0] select0_;
    NOT_perbit_32 C2(select0,select0_);
    wire [31:0] temp11,temp10,temp1;
    wire [31:0] temp21,temp20,temp2;
    wire [31:0] temp31,temp30,temp3;
    wire [31:0] temp41,temp40,temp4;
    AND_perbit_32 A1(D0,select1_,temp11);
    AND_perbit_32 A2(D0,select0_,temp10);
    AND_perbit_32 A3(temp11,temp10,temp1);
    AND_perbit_32 A4(D1,select1_,temp21);
    AND_perbit_32 A5(D1,select0,temp20);
    AND_perbit_32 A6(temp21,temp20,temp2);
    AND_perbit_32 A7(D2,select1,temp31);
    AND_perbit_32 A8(D2,select0_,temp30);
    AND_perbit_32 A9(temp31,temp30,temp3);
    AND_perbit_32 A10(D3,select1,temp41);
    AND_perbit_32 A11(D3,select0,temp40);
    AND_perbit_32 A12(temp41,temp40,temp4);
    wire [31:0] tempx,tempy;
    OR_perbit_32 B1(temp1,temp2,tempx);
    OR_perbit_32 B2(temp3,temp4,tempy);
    OR_perbit_32 B3(tempx,tempy,out);
endmodule