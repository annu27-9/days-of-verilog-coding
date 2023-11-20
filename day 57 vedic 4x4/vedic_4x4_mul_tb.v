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


module vedic_4x4_mul_tb;
reg [3:0]a;
reg [3:0]b;
wire [7:0]c;

vedic_4x4_mul uut(.a(a),.b(b),.c(c));   
initial begin
a = 0 ; b = 0;
#6 a = 12; b = 12;
#6 a = 13; b = 13;
#6 a =10;  b = 11;

#6 a =15;  b = 11;
#7 $finish;
end
endmodule
