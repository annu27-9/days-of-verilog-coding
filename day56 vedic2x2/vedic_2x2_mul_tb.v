`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 14:02:27
// Design Name: 
// Module Name: vedic_2x2_mul_tb
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


module vedic_2x2_mul_tb;
reg [1:0]a;
reg [1:0]b;
wire [3:0]c;

vedic_2_x_2_mul uut(.a(a),.b(b),.c(c));   
initial begin
a = 0 ; b = 0;
#6 a = 2; b = 2;
#6 a = 1; b = 2;
#6 a =0;  b = 1;
#7 $finish;
end
endmodule
