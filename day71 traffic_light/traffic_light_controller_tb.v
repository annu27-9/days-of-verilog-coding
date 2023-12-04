`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 14:14:28
// Design Name: 
// Module Name: traffic_light_controller_tb
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


module traffic__light_control_tb;

wire [2:0] north,south,east,west;
reg clk,rst;

traffic_light_control uut (north,south,east,west,clk,rst);
always #5 clk = ~clk;
 
initial
 begin
 clk = 0;
  rst=1'b1;
  #15;
  rst=1'b0;
  #1000;
  $stop;
 end
endmodule
