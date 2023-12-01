`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 09:26:07
// Design Name: 
// Module Name: round_robin_arbiter
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


module round_robin_arbiter_tb;
 reg [3:0] in; // requestors
  reg clk,rst;
 wire [3:0] out; // grant
 

round_robin_arbiter uut(in,clk,rst,out);
always #7 clk = ~clk;

initial 
begin
clk = 0;  rst = 0; in = 0;
   @(negedge clk) in = 4'b1111;
    @(negedge clk) in = 4'b1101;
    @(negedge clk) in = 4'b0101;
    @(negedge clk) in = 4'b0001;
    @(negedge clk) in = 4'b1010;
    @(negedge clk) in = 4'b0110;
  end
endmodule
