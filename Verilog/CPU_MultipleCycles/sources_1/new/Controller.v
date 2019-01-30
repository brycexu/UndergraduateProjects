`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/25 09:58:55
// Design Name: 
// Module Name: Controller
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
module Controller(
    input clock,
    input reset,
    input [5:0]Op,
    input [5:0]Funct,
    output reg MemtoReg,
    output reg RegDst,
    output reg lorD,
    output reg [1:0]PCSrc,
    output reg [2:0]ALUSrcB,
    output reg ALUSrcA,
    output reg IRWrite,
    output reg MemWrite,
    output reg PCWrite,
    output reg Branch,
    output reg Branch2,
    output reg RegWrite,
    output reg [1:0]ALUOp,
    output [5:0]ALUControl,
    output reg NPD,
    output Shamt,
    output [3:0]state
);

reg [3:0]nextstate;
reg [3:0]state;

    //��12�ֵ�ǰ״̬����λ�����������б���
parameter 
    S0=4'd0,
    S1=4'd1,
    S2=4'd2,
    S3=4'd3,
    S4=4'd4,
    S5=4'd5,
    S6=4'd6,
    S7=4'd7,
    S8=4'd8,
    S9=4'd9,
    S10=4'd10,
    S11=4'd11,
    S12=4'd12,//bne
    S13=4'd13,//��������
    S14=4'd14,
    LW=6'd35,
    SW=6'd43,
    J=6'd2,
    Rtype=6'd0,
    BEQ=6'd4,
    ADDI=6'd8,//Ϊ�������ӷ�����Ϊ9��Ϊ�޷����������ӷ�
    BNE=6'd5,
    ORI=6'd13,
    MUL=6'd28,
    NP=6'd38;

reg [5:0]opcode;
//ÿ��ʱ���ز���һ�ο��ܵ�״̬�仯    
always@(posedge clock)
    if(reset) begin
        state<=S0;
    end
    else
        state<=nextstate;
            
//������һ״̬������߼�
always@(state or opcode)
    begin
        if (state==S1)
            opcode<=Op;            
        case(state)
            S0: begin
                nextstate=S1;
                end
            S1:if((opcode==SW)|(opcode==LW))
                   nextstate=S2;
               else if((opcode==Rtype)|(opcode==MUL))
                   nextstate=S6;
               else if(opcode==BEQ)
                   nextstate=S8;
               else if(opcode==ADDI)
                   nextstate=S9;
               else if(opcode==J)    
                   nextstate=S11;
               else if(opcode==BNE)
                    nextstate=S12;
               else if(opcode==ORI)
                    nextstate=S13;
               else if(opcode==NP)
                    nextstate=S14;
               else nextstate=S1;//��Opcode��Ϊ��6�ֲ���ʱ��������S1״̬����,ֱ��Opcode��������ֲ�����֮һ
            S2:if (opcode==LW)
                   nextstate=S3;
               else if(opcode==SW)
                   nextstate=S5;
               else nextstate=S2;//��ʱOpcode��ΪSW����LWʱ��������S2״̬���䣬ʵ���Ͻ���S2�����OpcodeΪLW����SW
            S6: nextstate=S7;
            S9: nextstate=S10;
            S3: nextstate=S4;
            S13: nextstate=S10;
            default: nextstate=S0;
        endcase
 end
    
always@(state or opcode)
    begin
        case(state)
            S0: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b001;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b1;
                    MemWrite = 1'b0;
                    PCWrite = 1'b1;
                    Branch = 1'b0;
                    Branch2=1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    NPD = 0;
                end
            S1: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b011;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S2: begin 
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b010;
                    ALUSrcA = 1'b1;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S3: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b1;
                    PCSrc = 2'bXX;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S4: begin
                    MemtoReg = 1'b1;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'bXX;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b1;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S5: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b1;
                    PCSrc = 2'bXX;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b1;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S6: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b1;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b10;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S7: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b1;
                    lorD = 1'b0;
                    PCSrc = 2'bXX;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b1;
                    ALUOp = 2'b10;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S8: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b01;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b1;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b1;
                    RegWrite = 1'b0;
                    ALUOp = 2'b01;
                    Branch2=1'b0;
                    NPD = 0;
                end
            S9: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b010;
                    ALUSrcA = 1'b1;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
            
            S10:begin 
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b1;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
       
            S11:begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b10;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b1;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    Branch2=1'b0;
                    NPD = 0;
                end
                
            S12: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b01;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b1;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b01;
                    Branch2=1'b1;
                    NPD = 0;
                end
               
            S13: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b100;
                    ALUSrcA = 1'b1;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b0;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b11;
                    Branch2=1'b0;
                    NPD = 0;
                end
                  
            S14: begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b00;
                    ALUSrcB = 3'b001;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b1;
                    Branch = 1'b0;
                    Branch2=1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b01;
                    NPD = 1;
                end                          

            default:begin
                    MemtoReg = 1'b0;
                    RegDst = 1'b0;
                    lorD = 1'b0;
                    PCSrc = 2'b10;
                    ALUSrcB = 3'b000;
                    ALUSrcA = 1'b0;
                    IRWrite = 1'b0;
                    MemWrite = 1'b0;
                    PCWrite = 1'b1;
                    Branch = 1'b0;
                    RegWrite = 1'b0;
                    ALUOp = 2'b00;
                    NPD = 0;
                end
        endcase
    end
    
    ALU_decoder dut(ALUOp,Funct,Shamt,ALUControl);
    
endmodule
