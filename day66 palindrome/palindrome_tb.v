`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 08:17:44
// Design Name: 
// Module Name: palindrome_tb
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


module palindrome_tb;
reg clk; 
reg [7:0] data_in;
wire is_palindrome;


always #1 clk = ~clk;
palindrome_detec uut(clk,data_in,is_palindrome);
initial
begin
clk = 0; data_in = 0;
#11 data_in = 8'b10101010;
#10 data_in = 8'b10100101;
#10 data_in = 8'b11110000;
#10 data_in = 8'b11000011;
#10 data_in = 8'haa;
#10 data_in = 8'b11001100;
#4 $finish;
end

endmodule
