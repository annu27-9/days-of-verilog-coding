`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 20:56:27
// Design Name: 
// Module Name: Async_fifo_tb
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


module Async_fifo_tb;
  reg [7:0] in; 
  reg clk,clk2,rst,wr,rd; //wr is write enable and rd is read enable
  wire [7:0] out; 
  wire [6:0] fifo_cnt;
  wire empty,full; 

  Async_fifo dut(in,wr,rd,clk,clk2,rst,out,fifo_cnt,empty,full);
  
  always #2 clk=~clk;
  always #4 clk2=~clk2;

  initial begin

    #0; in=0; clk=0; clk2=0; rst=0; wr=0; rd=0;
    #3; rst=1;
    #3; rst=0; wr=1; in=8'ha1;
    #9; in=8'h1b; 
    #9; in=8'hee;
    #9; in=8'h55;
    #9; in=8'hbf;
    #6; wr=0; 
    #4; rd=1;
    #30; $finish;
  end
endmodule
