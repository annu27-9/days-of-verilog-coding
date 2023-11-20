`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 13:18:06
// Design Name: 
// Module Name: VEDIC_MUL
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
////////////////////////////////////////////////////////////////////////////////
module vedic_4x4_mul(a,b,c);  
input [3:0]a,b;
output [7:0]c;
wire [15:0]w;
wire [11:0]S;
wire [3:0]C;
wire [5:0]Ci;

assign Ci = 6'b0;
vedic_2x2_mul M1(b[1:0],a[1:0],w[3:0]);
vedic_2x2_mul M2(b[1:0],a[3:2],w[7:4]);
vedic_2x2_mul M3(b[3:2],a[1:0],w[11:8]);
vedic_2x2_mul M4(b[3:2],a[3:2],w[15:12]);

RCA_4bit R1(S[3:0],C[0],w[4],w[5],w[6],w[7],w[8],w[9],w[10],w[11],Ci[0]);
RCA_4bit R2(S[7:4],C[1],w[2],w[3],Ci[1],Ci[2],S[0],S[1],S[2],S[3],Ci[3]);
RCA_4bit R3(S[11:8],C[2],S[6],S[7],Ci[4],C[0],w[12],w[13],w[14],w[15],Ci[5]);



assign c[0] = w[0];
assign c[1] = w[1];
assign c[2] = S[4];
assign c[3] = S[5];
assign c[4] = S[8];
assign c[5] = S[9];
assign c[6] = S[10];
assign c[7] = S[11];
endmodule


module vedic_2x2_mul(b,a,c);
input [1:0]a;
input [1:0]b;
output [3:0]c;

wire [3:0]w;

assign c[0] = a[0]&b[0];
assign w[0] = a[1]&b[0];
assign w[1] = a[0]&b[1];
assign w[2] = a[1]&b[1];

HA H1(c[1],w[3],w[0],w[1]);
HA H2(c[2],c[3],w[2],w[3]);
endmodule


module HA(S,C,A,B);
input A,B;
output S,C;
xor G1(S,A,B);
and G2(C,A,B);

endmodule
// FUll adder using half adder//
module FA(S,C,A,B,Cin);
input A,B,Cin;
output S,C;
wire W1,S0,C0;
// Instantiate half adder
HA H1(S0,C0,A,B);
HA H2(S,W1,S0,Cin);
or G3(C,C0,W1);
endmodule

//Ripple Carry Adder using FULL adder//
module RCA_4bit(S,Cout,A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3],Cin);
output [3:0]S;
output Cout;
input [3:0]A;
input [3:0]B;
input Cin;
wire C1,C2,C3;
// Instantiate FULL adder
FA F1(S[0],C1,A[0],B[0],Cin);
FA F2(S[1],C2,A[1],B[1],C1);
FA F3(S[2],C3,A[2],B[2],C2);
FA F4(S[3],Cout,A[3],B[3],C3);
endmodule
