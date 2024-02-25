`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 22:31:40
// Design Name: 
// Module Name: COM_tb
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


//module COM_2bit_tb;
//reg A0,A1,B0,B1;
//wire E2,G2,L2;

// ISTANTIATE 
//comp2_bit uut(E2,G2,L2,A0,A1,B1,B0);

//initial
//begin
//A0 =0; A1= 0; B0 = 0; B1 = 0; 
//#100 A0 =0; A1= 1; B0 = 0; B1 = 0; 
//#100 A0 =1; A1= 0; B0 = 0; B1 = 0; 
//#100 A0 =0; A1= 0; B0 = 0; B1 = 1; 
//#100 A0 =0; A1= 0; B0 = 1; B1 = 1; 
//#100 A0 =1; A1= 1; B0 = 1; B1 = 1; 
//#100 A0 =1; A1= 0; B0 = 1; B1 = 1; 
//#100 $finish;
//end
//endmodule
module COM4_bit_tb;

reg [3:0] A,B;
wire E,G,L;
comp4bit c1 (E,G,L,A,B);
initial begin
A=4'b0000;B=4'b0000;
end
always #80 A[3]=~A[3];
always #40 A[2]=~A[2];
always #20 A[1]=~A[1];
always #10 A[0]=~A[0];
always #80 B[0]=~B[0];
always #40 B[1]=~B[1];
always #20 B[2]=~B[2];
always #10 B[3]=~B[3];
initial #320 $stop;
endmodule
