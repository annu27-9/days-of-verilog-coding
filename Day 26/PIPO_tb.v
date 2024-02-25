`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2023 15:49:27
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb;
reg clk;
reg [3:0]d;
wire [3:0]q;

PIPO_SR uut(.clk(clk),.d(d),.q(q));
initial begin  

clk = 0;
d = 0;
#15;

d = 4'b0011;
#10 d = 4'b1100;
#10 d = 4'b1010;
#10 d = 4'b1111;
 #30 $finish;
end   
  always #4 clk = ~clk;
endmodule
