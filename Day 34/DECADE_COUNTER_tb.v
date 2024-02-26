`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 02:40:36
// Design Name: 
// Module Name: DECADE_COUNTER_tb
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


module DECADE_COUNTER_tb;
reg clk,reset;
wire [3:0]q;

DECADE_COUNTER uut(.clk(clk),.reset(reset),.q(q));

always #3 clk = ~clk;
always #55 reset = ~reset;
initial  
begin 
clk =0;
reset = 0; 

end
endmodule
