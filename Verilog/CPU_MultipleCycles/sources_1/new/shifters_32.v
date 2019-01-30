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
    input [31:0] a,     //����32λ
    input [31:0] b,    //��λ��Ŀ
    input [1:0] select,  //ѡ��00-���ƣ�01-�߼����ƣ�10-��������
    output [31:0] out   //���32λ
);
    //����b,��One-hot��ʽȫΪ0,One-hot��ʽ����ת������λ��
    wire [31:0] processed_b;
    preproshift_32 preprocess(b,processed_b);
    //��λ��Ŀ32-5
    wire [4:0] shift;
    decoder_32to5 decoder(processed_b,shift);
    wire [31:0] real_input;
    wire [31:0] temp_out;
    wire [31:0] a_;
    INVERSE_32 inverse(a,a_);
    //00�����ƣ����룺a[0:31]�����룺0
    //01���߼����ƣ����룺a[31:0]�����룺0
    //10���������ƣ����룺a[31:0]�����룺1
    Mux_4to1 mux(a_,a[31:0],a[31:0],a[31:0],select,real_input);
    wire make_up;
    and A1(make_up,a[31],select[1]);
    //Ͱ��32λ��λ��������߼�������ƣ���չΪ���ƺ��������ƶ�����ʹ��
    barrelshifter_32 shifter(real_input,shift,make_up,temp_out);
    //�������Ҫ��λ
    wire [31:0] temp_out_;
    INVERSE_32 inverse2(temp_out,temp_out_);
    Mux_4to1 mux2(temp_out_,temp_out,temp_out,temp_out,select,out);
endmodule