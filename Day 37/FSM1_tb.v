`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 10:07:46
// Design Name: 
// Module Name: FSM1_tb
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


module FSM1_tb;
reg in,reset,clk;
wire out;

FSM1 uut(.in(in),.reset(reset),.clk(clk),.out(out));  
always #3 clk = ~clk;
always #4 reset = ~reset;
always #7 in = ~in;
initial begin
in = 0; reset = 0; clk = 0;

end
endmodule
