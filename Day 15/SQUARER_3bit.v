`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2023 11:34:08
// Design Name: 
// Module Name: SQUARER_3bit
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


module SQUARER_3bit(Y0,Y1,Y2,Y3,Y4,Y5,a2,a1,a0);
output Y0,Y1,Y2,Y3,Y4,Y5;
input a2,a1,a0;
wire w1,w2,w0,w3,w4;

buf(Y0,a0);
and G1(Y1,a2,0);
not G2(w2,a2);
not G3(w1,a1);
not G4(w0,a0);
and G5(Y2,a1,w0);
xor G6(w3,a2,a1);
and G7(Y3,w3,a0);
or  G8(w4,a0,w1);
and G9(Y4,a2,w4);
and G10(Y5,a2,a1);


endmodule
