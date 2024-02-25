`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 01:46:46
// Design Name: 
// Module Name: SISO_tb
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


module SISO_tb;
reg clk;
reg Si;
wire S0;

SISO_SR uut(.clk(clk),.Si(Si),.S0(S0));

initial
begin 
 clk = 0;
 Si = 1;
 #10;
 Si = 0;
  #10;
 Si = 0;
 #10;
 Si = 1;
  #10;
 Si = 0;
 #50 $finish;
end
    always #4 clk = ~clk;
endmodule
