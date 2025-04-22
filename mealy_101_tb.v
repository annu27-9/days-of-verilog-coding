`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2025 09:52:10 PM
// Design Name: 
// Module Name: mealy_101_tb
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



module mealy_101_tb;
reg x,clk,rst;
wire y;

mealy_101 uut (x,clk,rst,y);
initial begin
clk = 0;
    forever begin
      #2 clk = ~clk;  
    end
  end 
  
  initial begin
  rst = 1;
  x = 0;
  
  #5 rst = 0;
  #3 x = 1;
  #2 x = 0;
  #4 x = 1;
  #6 x = 0;
  #2 x = 1;
  #4 x = 1;
  #3 x = 1;
  #2 x = 0;
  #4 x = 1;
  
  
  #5 $finish;
  end 
endmodule
