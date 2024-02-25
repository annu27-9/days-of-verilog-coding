`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 01:22:50
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb;
reg clk,mode;
reg [3:0]d;
wire S0; 

PISO_SR uut(.clk(clk),.d(d),.mode(mode),.S0(S0));

initial  begin 
clk = 0;
d = 4'b1001;
mode = 1;

#10
 mode = 0;

end
  always #4 clk = ~clk;
endmodule
