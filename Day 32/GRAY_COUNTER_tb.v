`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 21:03:35
// Design Name: 
// Module Name: GRAY_COUNTER_tb
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


module GRAY_COUNTER_tb;
parameter N = 4;
reg clk;
reg rst;
wire [N-1:0] out;

GRAY_COUNTER uut(.clk(clk),.rst(rst),.out(out)); 
always #5 clk = ~clk;

initial
begin 
 {clk,rst} <= 0;
 
 repeat(10)@(posedge clk);
 rst <= 1;
 repeat(20)@(posedge clk);
 $finish;
 
end

endmodule
