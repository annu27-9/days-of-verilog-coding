`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2023 22:33:24
// Design Name: 
// Module Name: DE2X4_tb
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


module DE2X4_tb;
reg X0,X1,E;
wire Y3,Y2,Y1,Y0;

DE2X4 uut(.X0(X0),.X1(X1),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.E(E));

initial
begin
// Initialize Inputs
E = 0; X1=0; X0=0;
 
 #10 E = 0; X1=0; X0=1;
 #10 E = 0; X1=1; X0=0;
 #10 E = 0; X1=1; X0=1;
 #10 E = 1; X1=0; X0=0;
 #10 E = 1; X1=0; X0=1;
 #10 E = 1; X1=1; X0=0;
 #10 E = 1; X1=1; X0=1;
   
 #10 $finish;
 
end
endmodule
