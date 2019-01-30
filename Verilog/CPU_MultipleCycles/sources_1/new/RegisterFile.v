`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/01 09:52:12
// Design Name: 
// Module Name: RegisterFile
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
module RegisterFile(
    input clk,
    input reset,
    input RegWrite,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD3,
    output [31:0] RD1,
    output [31:0] RD2
);
    reg [31:0] data[31:0];
    always @ (posedge clk) begin
        if(reset) begin
            data[0] = 32'd0;
            data[1] = 32'd0;
            data[2] = 32'd0;
            data[3] = 32'd0;
            data[4] = 32'd0;
            data[5] = 32'd0;
            data[6] = 32'd0;
            data[7] = 32'd0;
            data[8] = 32'd0;
            data[9] = 32'd0;
            data[10] = 32'd0;
            data[11] = 32'd0;
            data[12] = 32'd0;
            data[13] = 32'd0;
            data[14] = 32'd0;
            data[15] = 32'd0;
            data[16] = 32'd0;
            data[17] = 32'd0;
            data[18] = 32'd0;
            data[19] = 32'd0;
            data[20] = 32'd0;
            data[21] = 32'd0;
            data[22] = 32'd0;
            data[23] = 32'd0;
            data[24] = 32'd0;
            data[25] = 32'd0;
            data[26] = 32'd0;
            data[27] = 32'd0;
            data[28] = 32'd0;
            data[29] = 32'd0;
            data[30] = 32'd0;
            data[31] = 32'd0;
        end
    end
    always @ (posedge clk) begin
        if(RegWrite)
            data[A3] <= WD3;
    end
    assign RD1 = data[A1];
    assign RD2 = data[A2];
endmodule
