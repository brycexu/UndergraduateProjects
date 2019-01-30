`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 14:05:00
// Design Name: 
// Module Name: MIPS_SC
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
module MIPS_SC(
    input clk,
    input reset,
    output [31:0]PC,
    output [31:0]Instr,
    output [5:0]Op,
    output [5:0]Funct,
    output [4:0]A1,
    output [4:0]A2,
    output [4:0]A3,
    output RegWrite,
    output [31:0]WD3,
    output [31:0]RD1,
    output [31:0]RD2,
    output [31:0]SrcA,
    output [31:0]SrcB,
    output [31:0]ALUResult,
    output [15:0]DA,
    output MemWrite,
    output [31:0]DWD,
    output [31:0]DRD,
    output Zero,
    output NP
);
    wire [31:0]PC_0;
    wire [31:0]PC_;
    wire [31:0]PC;
    wire [31:0]PC_div4;
    wire [15:0]IA;
    wire [31:0]IRD;
    wire [31:0]Instr;
    wire [31:0]PCPlus4;
    wire [5:0]Op;
    wire [5:0]Funct;
    wire [4:0]A1;
    wire [4:0]A2;
    wire [4:0]A3;
    wire [4:0]WriteReg;
    wire [31:0]WD3;
    wire [15:0]Imm;
    wire [31:0]SignImm;
    wire [31:0]ShiftSignImm;
    wire [31:0]PCBranch;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire [31:0]SrcA;
    wire [31:0]SrcB;
    wire [31:0]WriteData;
    wire [31:0]ALUResult;
    wire Zero;
    wire Zero_;
    wire [15:0]DA;
    wire [31:0]DRD;
    wire [31:0]DWD;
    wire [31:0]ReadData;
    wire [31:0]Result;
    wire [27:0]JumpPC;
    wire Jump;
    wire MemtoReg;
    wire MemWrite;
    wire Branch;
    wire Branch2;
    wire [5:0]ALUControl;
    wire ALUSrc;
    wire RegDst;
    wire RegWrite;
    wire Branch_wire;
    wire Branch2_wire;
    wire NP;
    wire Shamt;
    wire PCSrc;
    wire Cout;
    //PC
    mux2to1_32 mux1(PCPlus4,PCBranch,PCSrc,PC_0);
    mux2to1_32 mux2(PC_0,{PCPlus4[31:28],JumpPC[27:0]},Jump,PC_);
    shift_Reg shiftReg1(clk,reset,PC_,PC);
    wire [31:0]PCPlus;
    mux2to1_32 mux101(32'd4,32'd0,NP,PCPlus);
    prefixadder_32 adder1(PC,PCPlus,1'd0,PCPlus4,Cout);
    //Instruction_Memory
    assign PC_div4 = PC >> 2;
    assign IA = {PC_div4[15:0]};
    Instruction_Memory memory1(IA,IRD);
    //Instr
    assign Instr = IRD;
    assign Op = Instr[31:26];
    assign Funct = Instr[5:0];
    assign A1 = Instr[25:21];
    assign A2 = Instr[20:16];
    mux2to1_5 mux3(Instr[20:16],Instr[15:11],RegDst,WriteReg);
    assign A3 = WriteReg;
    assign WD3 = Result;
    assign Imm = Instr[15:0];
    assign SignImm = {{16{Imm[15]}},Imm[15:0]};
    assign ShiftSignImm = SignImm << 2;
    prefixadder_32 adder2(ShiftSignImm,PCPlus4,1'd0,PCBranch,Cout);
    assign JumpPC = {2'b00,Instr[25:0]} << 2;
    //Controller
    Controller controller(Op,Funct,PCSrc,Jump,MemtoReg,MemWrite,Branch,Branch2,ALUSrc,RegDst,RegWrite,NP,Shamt,ALUControl);
    //RegisterFile
    RegisterFile register(clk,reset,RegWrite,A1,A2,A3,WD3,RD1,RD2);
    //ALU
    mux2to1_32 mux404(RD1,RD2,Shamt,SrcA);
    //assign SrcA = RD1;
    wire [31:0]RealB;
    wire [4:0]shiftNumber;
    wire [31:0]Onehot;
    assign shiftNumber = Instr[10:6];
    BintoOnehot bin2onehot(shiftNumber,Onehot);
    mux2to1_32 mux202(RD2,Onehot,Shamt,RealB);
    mux2to1_32 mux4(RealB,SignImm,ALUSrc,SrcB);
    ALU alu(SrcA,SrcB,ALUControl,ALUResult);
    assign Zero = (ALUResult == 0) ? 1'd1:1'd0;
    assign Zero_ = ~Zero;
    //Data_Memory
    assign WriteData = RD2;
    assign DA = ALUResult;
    assign DWD = WriteData;
    Data_Memory memory2(DA[15:0],DWD,clk,MemWrite,DRD);
    //Back
    assign ReadData = DRD;
    mux2to1_32 mux5(ALUResult,ReadData,MemtoReg,Result);
    //Jump
    and and1(Branch_wire,Branch,Zero);
    and and2(Branch2_wire,Branch2,Zero_);
    or or1(PCSrc,Branch_wire,Branch2_wire);
endmodule
