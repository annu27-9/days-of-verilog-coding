`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2023 14:14:55
// Design Name: 
// Module Name: D_tb
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


module DFF_tb;
reg d;
reg clk;
reg rst_n;
wire q;

D_flipflop uut(clk, rst_n, d,q);

initial begin
  clk=0; rst_n  = 0;
     forever #1clk = ~clk;  
       
end 
initial
   begin 
     d = 0;
    #10 d = 1; 
    #7 rst_n  = 1;
    #5 d = 0;
    #3 rst_n  = 0;
    #5 d = 1;
  end 
endmodule 
