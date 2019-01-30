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


module last_block(X,Y,Sk,Sk_1,Z);
input [15:0]X;
input [16:0]Sk;
input Y;
output [16:0] Sk_1;
output Z;
wire [16:0]Sk_1;

wire [17:0]Cin;
assign Cin[0]=1;

//the one bit result of multiplier，这一步有符号乘法和无符号乘法是一样的
           MU_last MU_0_last(X[0],Y,Sk[0],Cin[0],Z,Cin[1]);

wire [16:0]X2;//扩展了符号位的部分积和位积
generate
genvar s2;
    for(s2=0;s2<16;s2=s2+1)
    begin: test_last
        assign X2[s2]=X[s2];
    end
endgenerate
assign X2[16]=X[15];

//generate [16:0]Sk_1 
    generate
    genvar p2;
        for(p2=1;p2<17;p2=p2+1)
        begin: multiplier_16bit_last
            MU_last MU_p_last(X2[p2],Y,Sk[p2],Cin[p2],Sk_1[p2-1],Cin[p2+1]);
        end 
    endgenerate 
    assign Sk_1[16]=Sk_1[15];
    
endmodule