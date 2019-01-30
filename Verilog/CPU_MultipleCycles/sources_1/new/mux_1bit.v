`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 09:15:26
// Design Name: 
// Module Name: mux_1bit
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


module mux_1bit(B,Bn,BB,S1,S2);
input B,Bn,S1,S2;
output BB;

    wire T1,T2;
    
    and x3(T1,B,S1);
    and x4(T2,Bn,S2);
    or x5(BB,T1,T2);
    
endmodule
