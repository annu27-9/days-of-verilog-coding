`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2023 14:26:14
// Design Name: 
// Module Name: T_FF_tb
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
module T_FF_tb;
reg t;
reg clk;
reg rst_n;
wire q;

T_FF uut(clk, rst_n, t,q);

initial begin
  clk=0; rst_n  = 0;
     forever #1clk = ~clk;  
       
end 
initial
   begin 
     t = 0;
    #10 t = 1; 
    #7 rst_n  = 1;
    #5 t = 0;
    #3 rst_n  = 0;
    #5 t = 1;
  end 
endmodule 