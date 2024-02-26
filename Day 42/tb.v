`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 23:55:55
// Design Name: 
// Module Name: tb
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


module tb();
      reg clk_in;
  wire clk_out;
  
  clock_Divider dut(clk_in,clk_out);
  
  always #2 clk_in=~clk_in;
  
  initial begin
    #0; clk_in=0;
    #250; $finish; 
  end
endmodule
