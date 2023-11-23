`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 00:08:07
// Design Name: 
// Module Name: fibo_tb
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


module fibo_tb;
reg clk,rst;
wire [31:0] fib_out;

fibo_series uut(clk,rst,fib_out);
always #2 clk = ~clk;
initial
begin
rst = 0; clk = 0;
#3 rst = 1;
#80 $finish;
end
endmodule
