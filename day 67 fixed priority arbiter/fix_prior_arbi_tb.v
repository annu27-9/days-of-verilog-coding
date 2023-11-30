`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 15:35:57
// Design Name: 
// Module Name: fix_prior_arbi_tb
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


module fix_prior_arbi_tb;
reg [3:0] in;
reg clk,rst;
wire [3:0] out;

fixed_priority_arbiter uut (in,clk,rst,out);
always #1 clk  = ~clk;

initial 
begin
clk = 0 ; rst =0;  in  = 0;
#4 in = 4'b1010;
#7 in = 4'b0010;
#7 in = 4'b1110;
#7 in = 4'b0000;
#7 in = 4'b0001;
#7 in = 4'b1101;
#7 in = 4'b0110;
#4 rst = 1;
#7 in = 4'b0001;
#7 in = 4'b1101;
#7 in = 4'b0110;
end
endmodule
