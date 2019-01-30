`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 10:05:33
// Design Name: 
// Module Name: ALU
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
module ALU(A,B,F,Y);
input [31:0]A,B;
input [5:0]F;
output [31:0]Y;

    //genrate Bn
wire [31:0]Bn;
    generate
    genvar i;
        for(i=0;i<32;i=i+1)
        begin: B_n
            not y_i(Bn[i],B[i]);
        end 
    endgenerate 
    
    //mux_2 of B and Bn
wire [31:0]BB;
parameter ones = 1'b1;
    mux_2 mux_2(F[3],Bn,B,BB,ones);
    
    //genrate BB+A and BB*A(N1,N0)
wire [31:0]N1, N0;
    generate
    genvar j;
        for(j=0;j<32;j=j+1)
        begin: and_or
            or N1_j(N1[j],BB[j],A[j]);
            and N0_j(N0[j],BB[j],A[j]);
        end 
    endgenerate 
    
//generate prefix sum of A+B(N2)
wire Cout;
wire [31:0]N2;
prefixadder_32 prefixadder_32(A,BB,F[3],N2,Cout);

//slt processing(N3)
wire [31:0]N3;
    generate
    genvar m;
        for(m=1;m<32;m=m+1)
        begin: slt
            and N3_m(N3[m],N2[31],0);
        end 
    endgenerate    
    and N3_0(N3[0],N2[31],1); 

//generate ~A(N4)
wire [31:0]N4;
    genvar n;
    generate
        for (n = 0;n <= 31;n = n + 1)
            begin:not_32
                not inv32(N4[n],A[n]);
        end
     endgenerate
     
//generate A xor B(N5)
wire [31:0]N5;
    genvar x;
    generate
    begin:xor_32
        for (x = 0;x <= 31;x = x + 1)
            xor X1(N5[x],A[x],B[x]);
    end
    endgenerate 
    
//generate multiplier(N6)
wire [31:0]N6;
multiplier multiplier(A[15:0],B[15:0],N6);

//generate shifter-32(N7)
wire [31:0]N7;
    shifters_32 shifter(A,B,F[5:4],N7);
    
//generate Y by mux_4 
MUX4 MUX4(N7,N6,N5,N4,N3,N2,N1,N0,F[2:0],1,Y);

endmodule
