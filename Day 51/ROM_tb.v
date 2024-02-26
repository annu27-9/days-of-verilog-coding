`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 00:51:31
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb;
  reg [3:0] addr;
  reg en,clk;
  wire [3:0] data;
  
  ROM uut(addr,clk,en,data);
  
  always #2 clk=~clk;
  
  initial begin

    #0; clk=1; addr=4'h1; en=1;
    #7; addr=4'h2; 
    #7; addr=4'h3;
    #7; addr=4'ha;
    #7; addr=4'he;
    #7; addr=4'hf; 
    #7; en=0;
    #24; $finish;
  
  end
 
endmodule
