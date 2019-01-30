`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/11 15:56:32
// Design Name: 
// Module Name: shifters_32
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
module shifters_32(
    input [31:0] a,     //输入32位
    input [31:0] b,    //移位数目
    input [1:0] select,  //选择：00-左移；01-逻辑右移；10-算术右移
    output [31:0] out   //输出32位
);
    //处理b,非One-hot格式全为0,One-hot格式正常转换成移位数
    wire [31:0] processed_b;
    preproshift_32 preprocess(b,processed_b);
    //移位数目32-5
    wire [4:0] shift;
    decoder_32to5 decoder(processed_b,shift);
    wire [31:0] real_input;
    wire [31:0] temp_out;
    wire [31:0] a_;
    INVERSE_32 inverse(a,a_);
    //00：左移：输入：a[0:31]，补齐：0
    //01：逻辑右移：输入：a[31:0]，补齐：0
    //10：算术右移：输入：a[31:0]，补齐：1
    Mux_4to1 mux(a_,a[31:0],a[31:0],a[31:0],select,real_input);
    wire make_up;
    and A1(make_up,a[31],select[1]);
    //桶型32位移位器，针对逻辑右移设计，扩展为左移和算术右移都可以使用
    barrelshifter_32 shifter(real_input,shift,make_up,temp_out);
    //左移输出要倒位
    wire [31:0] temp_out_;
    INVERSE_32 inverse2(temp_out,temp_out_);
    Mux_4to1 mux2(temp_out_,temp_out,temp_out,temp_out,select,out);
endmodule