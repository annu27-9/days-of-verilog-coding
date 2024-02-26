`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 16:49:59
// Design Name: 
// Module Name: tb
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


module tb;
reg clk;
reg A,B,reset;
wire out;   

FSM2 uut(clk,reset,A,B,out); 
always #5 clk = ~clk;
initial
begin
clk = 0; A = 0; B = 0; reset = 0;
#10 A = 0; B = 0; reset = 0;
#10 A = 0; B = 0; reset = 1;
#10 A = 0; B = 1; reset = 0;
#10 A = 0; B = 1; reset = 1;
#10 A = 1; B = 0; reset = 0;
#10 A = 1; B = 0; reset = 1;
#10 A = 1; B = 1; reset = 0;
#10 A = 1; B = 1; reset = 1;
#10 reset = 0;
#50 $finish;
end


endmodule
