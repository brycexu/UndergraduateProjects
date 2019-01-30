`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 11:33:09
// Design Name: 
// Module Name: multiplier_16bit
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


module multiplier_16bit(X,Y,Sk,Sk_1,Z);
input [15:0]X;
input [16:0]Sk;
input Y;
output [16:0] Sk_1;
output Z;
wire [16:0]Sk_1;

wire [17:0]Cin;
assign Cin[0]=0;

//the one bit result of multiplier，这一步有符号乘法和无符号乘法是一样的
           MU MU_0(X[0],Y,Sk[0],Cin[0],Z,Cin[1]);

wire [16:0]X2;//扩展了符号位的部分积和位积
generate
genvar s1;
    for(s1=0;s1<16;s1=s1+1)
    begin: test 
        assign X2[s1]=X[s1];
    end
endgenerate
assign X2[16]=X[15];

//generate [16:0]Sk_1 
    generate
    genvar p;
        for(p=1;p<17;p=p+1)
        begin: multiplier_16bit
            MU MU_p(X2[p],Y,Sk[p],Cin[p],Sk_1[p-1],Cin[p+1]);
        end 
    endgenerate 
    assign Sk_1[16]=Sk_1[15];
    
endmodule