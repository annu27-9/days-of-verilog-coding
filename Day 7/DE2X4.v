`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2023 22:26:14
// Design Name: 
// Module Name: DE2X4
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


module DE2X4(Y3,Y2,Y1,Y0,X1,X0,E);
output Y3,Y2,Y1,Y0;
input X1,X0,E;
wire W1,W2;
not G1(W1,X0);
not G2(W2,X1);
and G3(Y0,W1,W2,E);
and G4(Y1,X0,W2,E);
and G5(Y2,W1,X1,E);
and G6(Y3,X1,X0,E);



endmodule
