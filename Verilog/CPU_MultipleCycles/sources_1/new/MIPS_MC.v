`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 20:16:03
// Design Name: 
// Module Name: MIPS_MC
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
module MIPS_MC(
    input clk,
    input reset,
    output [31:0]PC,
    output [31:0]Instr,
    output [3:0]state,
    output [4:0]A1,
    output [4:0]A2,
    output [4:0]A3,
    output [31:0]WD3,
    output [31:0]RD1,
    output [31:0]RD2,
    output [31:0]SrcA,
    output [31:0]SrcB,
    output [31:0]ALUResult,
    output [15:0]MA,
    output [31:0]MWD,
    output RegWrite,
    output MemtoReg,
    output MemWrite,
    output Zero,
    output Shamt,
    output [31:0]RealB,
    output [1:0]ALUSrcB,
    output [31:0]A,
    output [31:0]B
);
    wire [31:0]PC_;
    wire [31:0]PC;
    wire [31:0]Adr;
    wire [15:0]MA;
    wire [31:0]MWD;
    wire [31:0]MRD;
    wire [31:0]Instr;
    wire [31:0]Data;
    wire [4:0]A1;
    wire [4:0]A2;
    wire [4:0]A3;
    wire [31:0]WD3;
    wire [15:0]Imm;
    wire [31:0]SignImm;
    wire [31:0]ShiftSignImm;
    wire [27:0]JumpAddr;
    wire [31:0]PCJump;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire [31:0]A;
    wire [31:0]B;
    wire [31:0]SrcA;
    wire [31:0]SrcB;
    wire Zero;
    wire Zero_;
    wire [31:0]ALUResult;
    wire [31:0]ALUOut;
    wire [31:0]Result;
    wire [3:0]state;
    wire lorD;
    wire MemWrite;
    wire IRWrite;
    wire RegDst;
    wire MemtoReg;
    wire RegWrite;
    wire ALUSrcA;
    wire [1:0]ALUSrcB;
    wire [5:0]ALUControl;
    wire Branch;
    wire Branch2;
    wire PCWrite;
    wire PCEn;
    wire [1:0]PCSrc;
    wire [5:0]Op;
    wire [5:0]Funct;
    wire Shamt;
    wire NP;
    
    //PC
    wire PCENANDNP;
    and fuckyou(PCENANDNP,~NP,PCEn);
    PCShiftReg shiftReg1(clk,reset,PCENANDNP,PC_,PC);
    wire [31:0]PC_div4;
    assign PC_div4 = PC >> 2;
    mux2to1_32 mux1(PC_div4,ALUOut,lorD,Adr);
    //Memory
    assign MA = Adr[15:0];
    assign MWD = B;
    ip_memory memory(MA,MWD,clk,MemWrite,MRD);
    //Instr
    ShiftReg shiftReg2(clk,IRWrite,MRD,Instr);
    ShiftReg shiftReg3(clk,1'd1,MRD,Data);
    assign Op = Instr[31:26];
    assign Funct = Instr[5:0];
    assign A1 = Instr[25:21];
    assign A2 = Instr[20:16];
    mux2to1_5 mux2(Instr[20:16],Instr[15:11],RegDst,A3);
    mux2to1_32 mux3(ALUOut,Data,MemtoReg,WD3);
    assign Imm = Instr[15:0];
    assign SignImm = {{16{Imm[15]}},Imm[15:0]};
    assign ShiftSignImm = SignImm << 2;
    assign JumpAddr = {2'b00,Instr[25:0]} << 2;
    assign PCJump = {PC[31:28],JumpAddr[27:0]};
    //RegisterFile
    RegisterFile registerFile(clk,reset,RegWrite,A1,A2,A3,WD3,RD1,RD2);
    wire [4:0]OldInstr;
    wire [4:0]NewInstr;
    assign OldInstr = Instr[10:6];
//    wire [31:0]RealB;
//    wire [4:0]shiftNumber;
//    wire [31:0]Onehot;
//    assign shiftNumber = Instr[10:6];
//    BintoOnehot FuckLogicCircuits(shiftNumber,Onehot);
//    mux2to1_32 fuckyou2(RD2,Onehot,Shamt,RealB);
    ShiftReg shiftReg4(clk,1'd1,RD1,A);
    ShiftReg shiftReg5(clk,1'd1,RD2,B);
    ShiftReg shiftReg101(clk,1'd1,OldInstr,NewInstr);
    //Controller
    Controller dut(clk,reset,Op,Funct,MemtoReg,RegDst,lorD,PCSrc,ALUSrcB,ALUSrcA,IRWrite,MemWrite,PCWrite,Branch,Branch2,RegWrite,ALUOp,ALUControl,NP,Shamt,state);
    //ALU
    wire [31:0]RealB;
    wire [4:0]shiftNumber;
    wire [31:0]Onehot;
    assign shiftNumber = NewInstr;
    BintoOnehot FuckLogicCircuits(shiftNumber,Onehot);
    wire [31:0]tempB;
    mux2to1_32 fuckyou2(B,Onehot,Shamt,tempB);
    wire [31:0]RealA;
    mux2to1_32 mux404(A,B,Shamt,RealA);
    mux2to1_32 mux4(PC,RealA,ALUSrcA,SrcA);
    mux4to1_32 mux5(tempB,32'd4,SignImm,ShiftSignImm,ALUSrcB,SrcB);
    ALU alu(SrcA,SrcB,ALUControl,ALUResult);
    //back
    ShiftReg shiftReg6(clk,1'd1,ALUResult,ALUOut);
    mux3to1_32 mux6(ALUResult,ALUOut,PCJump,PCSrc,Result);
    assign PC_ = Result;
    //Jump
    wire Branch_0;
    wire Branch2_0;
    wire Branch_out;
    assign Zero = (ALUResult == 0) ? 1'd1:1'd0;
    assign Zero_ = ~Zero;
    and and1(Branch_0,Branch,Zero);
    and and2(Branch2_0,Branch2,Zero_);
    or or1(Branch_out,Branch_0,Branch2_0);
    or or2(PCEn,Branch_out,PCWrite);
    
endmodule
