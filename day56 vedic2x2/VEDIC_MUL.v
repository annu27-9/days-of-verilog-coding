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
//////////////////////////////////////////////////////////////////////////////////




module vedic_2_x_2_mul(a,b,c);
input [1:0]a;
input [1:0]b;
output [3:0]c;

wire [3:0]w;

assign c[0] = a[0]&b[0];
assign w[0] = a[1]&b[0];
assign w[1] = a[0]&b[1];
assign w[2] = a[1]&b[1];

HA H1(w[0],w[1],c[1],w[3]);
HA H2(w[2],w[3],c[2],c[3]);
endmodule


module HA(a,b,S,C);
input a,b;
output S,C;
xor G1(S,a,b);
and G2 (C,a,b);
endmodule

