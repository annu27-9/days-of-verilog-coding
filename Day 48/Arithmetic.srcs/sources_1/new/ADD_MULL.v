`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 00:49:47
// Design Name: 
// Module Name: ADD_MULL
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


module ADD_MULL(A,B,C,D,Sum,Product);
 parameter size_add = 4;
 parameter size_mul = 4;
input [size_add -1 :0] A,B; 
input [size_mul -1 :0] C,D;
output [size_add*2 -1 :0] Sum; 
output [size_mul*2 -1 :0] Product;

assign Sum = A+B; 
assign Product = C*D;

endmodule
