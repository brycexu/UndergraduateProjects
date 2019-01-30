`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 11:18:40
// Design Name: 
// Module Name: FA_1bit
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


module FA_1bit(A,B,Cin,Sum,Cout);
    input A;
    input B;
    input Cin;
    output Sum;
    output Cout;
    wire S1, T1, T2, T3;
  
    xor S1_(S1,A,B);
    xor Sum_(Sum,S1,Cin);
    
    and T3_(T3,A,B);
    and T2_(T2,B,Cin);
    and T1_(T1,A,Cin);
    
    or Cout_(Cout,T1,T2,T3);
  
endmodule