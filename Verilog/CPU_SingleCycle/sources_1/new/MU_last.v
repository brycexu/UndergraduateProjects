`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 11:13:15
// Design Name: 
// Module Name: MU
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


module MU_last(Xj,Yi,Sk,Cin,Sk_1,Cout);
input Xj,Yi,Cin,Sk;
output Sk_1,Cout;

wire Pij;
nand Pij_(Pij,Xj,Yi);

FA_1bit MU_FA_last(Pij,Sk,Cin,Sk_1,Cout);

endmodule