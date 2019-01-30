`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/11 20:12:03
// Design Name: 
// Module Name: barrelshifter_32
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


module barrelshifter_32(
    input [31:0] a,
    input [4:0] shift,
    input make_up,
    output [31:0] out
);
    wire [31:0] barrel1,barrel2,barrel3,barrel4;
    wire make_up_1; assign make_up_1 = make_up;
    wire [1:0] make_up_2; assign make_up_2 = {2{make_up}};
    wire [3:0] make_up_3; assign make_up_3 = {4{make_up}};
    wire [7:0] make_up_4; assign make_up_4 = {8{make_up}};
    wire [15:0] make_up_5; assign make_up_5 = {16{make_up}};
     Mux_64to32 shifter1(a[31:0],{make_up_1,a[31:1]},shift[0],barrel1);
     Mux_64to32 shifter2(barrel1,{make_up_2,barrel1[31:2]},shift[1],barrel2);
     Mux_64to32 shifter3(barrel2,{make_up_3,barrel2[31:4]},shift[2],barrel3);
     Mux_64to32 shifter4(barrel3,{make_up_4,barrel3[31:8]},shift[3],barrel4);
     Mux_64to32 shifter5(barrel4,{make_up_5,barrel4[31:16]},shift[4],out);
endmodule
