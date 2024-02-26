`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 00:56:41
// Design Name: 
// Module Name: ADD_MULL_tb
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


module ADD_MULL_tb;
reg [3:0] A,B;
reg [3:0] C,D;
wire [7:0] Sum;
wire [7:0] Product;
 ADD_MULL uut (.A(A),.B(B),.C(C),.D(D),.Sum(Sum),.Product(Product));
initial begin
       A = 34;     B = 45;     C = 10;     D = 50;     
 #100; A = 255;    B = 255;    C = 20;     D = 60;   
 #100; A = 121;    B = 13;     C = 30;     D = 10;     
 #100; A = 200;    B = 200;    C = 40;     D = 20;    
  #100 $finish;
    end


endmodule
