`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/02 13:15:59
// Design Name: 
// Module Name: MIPS
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
module MIPS(
    input clk,
    input reset,
    input address,
    //for tests
    output [3:0]state,
    output [31:0]RD,
    output [31:0]Adr,
    output ALUSrcA,
    output [2:0]ALUSrcB,
    output [31:0]ALUResult,
    output [31:0]SrcA,
    output [31:0]SrcB,
    output [1:0]PCSrc,
    output MemWrite,
    output [31:0]WD,
    output [31:0]PC_,
    output lorD,
    output [31:0]ALUOut,
    output PCEn,
    output [31:0]PC,
    output [31:0]Adr_temp,
    output MemtoReg,
    output [31:0]WD3,
    output [31:0]Data,
    output [31:0]B,
    output [31:0]RD1,
    output [31:0]RD2,
    output [4:0]A1,
    output [4:0]A2,
    output [4:0]A3,
    output RegWrite,
    output [31:0]data
);
    //main wires;
    wire [5:0]Op;
    wire [5:0]Funct;
    wire lorD;
    wire MemWrite;
    wire IRWrite;
    wire PCWrite;
    wire Branch;
    wire Branch2;
    wire PCEnBranch;
    wire PCEnBranch2;
    wire [1:0]PCSrc;
    wire [4:0]ALUControl;
    wire [2:0]ALUSrcB;
    wire ALUSrcA;
    wire regWrite;
    wire RegDst;
    wire MemtoReg;
    wire [31:0]PC_;
    reg [31:0]PC;
    wire [31:0]Adr_temp;
    wire [31:0]Adr;
    wire [31:0]WD;
    wire [31:0]RD;
    wire [31:0]Instr;
    wire [31:0]Data;
    wire [31:0]WD3;
    wire [5:0]A1;
    wire [5:0]A2;
    wire [5:0]A3;
    wire [15:0]Imm;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire [31:0]A;
    wire [31:0]B;
    wire [31:0]SrcA;
    wire [31:0]SrcB;
    wire [31:0]Signimm;
    wire [31:0]Oriimm;
    wire [31:0]Shiftsignimm;
    wire [25:0]addr;
    wire [27:0]Shiftaddr;
    wire [31:0]PCJump;
    wire Zero;
    wire Zero_;
    wire [31:0]ALUResult;
    wire [31:0]ALUOut;
    initial begin
        PC = 32'd0;
    end
    always @ (posedge clk) begin
        if(PCEn)
            PC = PC_;
    end
    assign Instr = RD;
    //Controller
    Controller dut(clk,reset,Op,Funct,MemtoReg,RegDst,lorD,PCSrc,ALUSrcB,ALUSrcA,IRWrite,MemWrite,PCWrite,Branch,Branch2,RegWrite,ALUOp,ALUControl,state);
    //PC
    assign Zero_ = ~Zero;
    assign PCEnBranch = Branch & Zero;
    assign PCEnBranch2 = Branch2 & Zero_;
    assign PCEn = PCWrite | PCEnBranch | PCEnBranch2;
    //Memory
    PCtoA pctoa(clk,reset,address,PC,Adr_temp);
    mux2to1_32 mux1(Adr_temp,ALUOut,lorD,Adr);
    ip_memory uut(.clk(clk),.we(MemWrite),.a(Adr[15:0]),.d(WD),.spo(RD));
    //Instruction 
    shift_Reg shiftReg3(clk,1,RD,Data);
    //assign Data = RD;
    assign Op = Instr[31:26];
    assign Funct = Instr[5:0];
    assign A1 = Instr[25:21];
    assign A2 = Instr[20:16];
    mux2to1_5 mux2(Instr[20:16],Instr[15:11],RegDst,A3);
    mux2to1_32 mux3(ALUOut,Data,MemtoReg,WD3);
    assign Imm = Instr[15:0];
    assign Signimm = {{16{Imm[15]}},Imm[15:0]};
    assign Oriimm = {16'd0,Imm[15:0]};
    assign Shiftsignimm = Signimm<<2;
    assign addr = Instr[25:0];
    assign Shiftaddr = addr<<2;
    assign PCJump = {PC[31:28],Shiftaddr[27:0]};
    //RegisterFile
    RegisterFile registerfile(clk,reset,RegWrite,A1,A2,A3,WD3,RD1,RD2,data);
    shift_Reg shiftReg4(clk,1,RD1,A);
    shift_Reg shiftReg5(clk,1,RD2,B);
    assign A = RD1;
    assign B = RD2;
    assign WD = B;
    //ALU
    mux2to1_32 mux4(PC,A,ALUSrcA,SrcA);
    mux4to1_32 mux5(B,32'd4,Signimm,Shiftsignimm,Oriimm,ALUSrcB,SrcB);
    ALU alu(SrcA,SrcB,ALUControl,ALUResult,Zero);
    shift_Reg shiftReg6(clk,1,ALUResult,ALUOut);
    mux3to1_32 mux6(ALUResult,ALUOut,PCJump,PCSrc,PC_);
endmodule
