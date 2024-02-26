`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 14:23:11
// Design Name: 
// Module Name: SLOW_COUNTER_tb
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


module SLOW_COUNTER_tb;
reg slow,clk,rst;
wire [3:0]q;

SLOW_COUNTER uut(.clk(clk),.rst(rst),.slow(slow),.q(q));
always #3 clk = ~clk;  
always #7 slow = ~slow;
always #99 rst = ~rst;
initial 
begin 
slow = 0;
clk = 0;
rst = 0;



end
endmodule
