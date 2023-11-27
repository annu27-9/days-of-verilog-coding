`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 12:41:50
// Design Name: 
// Module Name: square_wave_tb
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


module square_wave_tb;
reg clk;
reg rst_n;
wire sq_wave;

always #3 clk = ~clk;
always #6 rst_n = ~rst_n;
square_wave uut (.clk(clk),.rst_n(rst_n),.sq_wave(sq_wave));
initial
begin
clk = 0; rst_n = 0;
end
endmodule
