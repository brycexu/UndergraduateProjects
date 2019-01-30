`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/11 08:56:14
// Design Name: 
// Module Name: MUX4
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


module MUX4(
    input wire[31:0] N7,
    input wire[31:0] N6,
    input wire[31:0] N5,
    input wire[31:0] N4,
    input wire[31:0] N3,
    input wire[31:0] N2,
    input wire[31:0] N1,
    input wire[31:0] N0,
    input wire[2:0] F,
    input wire En,
    output wire[31:0]Y
    );
    wire [31:0]F0,F1,F2,F0_inv,F1_inv,F2_inv,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,EN;
        extend F_0(F[0],F0);
        extend F_1(F[1],F1);
        extend F_2(F[2],F2);
        extend EN_0(En,EN);
        not32 inv_0(F0,F0_inv);
        not32 inv_1(F1,F1_inv);
        not32 inv_2(F2,F2_inv);
        and32 and_0(N0,F2_inv,F1_inv,F0_inv,EN,Y0);
        and32 and_1(N1,F2_inv,F1_inv,F0,EN,Y1);
        and32 and_2(N2,F2_inv,F1,F0_inv,EN,Y2);
        and32 and_3(N3,F2_inv,F1,F0,EN,Y3);
        and32 and_4(N4,F2,F1_inv,F0_inv,EN,Y4);
        and32 and_5(N5,F2,F1_inv,F0,EN,Y5);
        and32 and_6(N6,F2,F1,F0_inv,EN,Y6);
        and32 and_7(N7,F2,F1,F0,EN,Y7);
        or32 or_0(Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y);  
endmodule

module and32(
    input wire[31:0]A_0,
    input wire[31:0]B_0,
    input wire[31:0]C_0,
    input wire[31:0]D_0,
    input wire[31:0]E_0,
    output wire[31:0]Y_0
    );
    genvar i;
    generate
        for (i = 0;i <= 31;i = i + 1)
        begin:bit1
            and5 and0(A_0[i],B_0[i],C_0[i],D_0[i],E_0[i],Y_0[i]);
        end
    endgenerate
endmodule

module or32(
    input wire[31:0]A_1,
    input wire[31:0]B_1,
    input wire[31:0]C_1,
    input wire[31:0]D_1,
    input wire[31:0]E_1,
    input wire[31:0]F_1,
    input wire[31:0]G_1,
    input wire[31:0]H_1,
    output wire[31:0]Y_1
    );
    genvar j;
    generate
        for (j = 0;j <= 31;j = j + 1)
        begin:bit2 
            or8 or0(A_1[j],B_1[j],C_1[j],D_1[j],E_1[j],F_1[j],G_1[j],H_1[j],Y_1[j]);
        end    
    endgenerate
endmodule

module not32(
    input wire[31:0]A_2,
    output wire[31:0]B_2
    );
    genvar m;
    generate
        for (m = 0;m <= 31;m = m + 1)
        begin:bit3
            not inv32(B_2[m],A_2[m]);
        end
    endgenerate
endmodule

module extend(
    input wire a,
    output wire [31:0]b
    );
    parameter one = 1'b1;
    genvar n;
    generate
        for (n = 0;n <= 31;n = n + 1)
        begin:bit4
            and A1(b[n],a,one);
        end
    endgenerate
endmodule

module and5(
    input wire a_0,b_0,c_0,d_0,e_0,
    output wire y_0
    );
    wire a0,b0,c0;
    and A1(a0,a_0,b_0);
    and A2(b0,a0,c_0);
    and A3(c0,b0,d_0);
    and A4(y_0,c0,e_0);
endmodule

module or8(
    input wire a_1,b_1,c_1,d_1,e_1,f_1,g_1,h_1,
    output wire y_1
    );
    wire a1,b1,c1,d1,e1,f1;
    or B1(a1,a_1,b_1);
    or B2(b1,a1,c_1);
    or B3(c1,b1,d_1);
    or B4(d1,c1,e_1);
    or B5(e1,d1,f_1);
    or B6(f1,e1,g_1);
    or B7(y_1,f1,h_1);
endmodule
