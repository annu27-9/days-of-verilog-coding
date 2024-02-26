`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 00:34:47
// Design Name: 
// Module Name: UNIVERSAL_SHIFT_tb
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


module UNIVERSAL_SHIFT_tb;
reg in,s1,s0,clk,clr;
reg [3:0] in_L;
wire [3:0] out;

universal_shift_register dut(in,in_L,s1,s0,clk,clr,out);

always #3 clk=~clk;

initial begin
  in=0; in_L=4'b0000; s1=0; s0=0; clk=0; clr=0;
#5;  in=1; in_L=4'b1011; clr=1; 
#5;  clr=0;
#5;  s1=0; s0=1;
#30; in=0; s1=1; s0=0; 
#30; s1=1; s0=1;
#7;  s1=0; s0=0;
#5 in_L = 4'b1110;
#25; in = 1; s1 = 1; s0 = 0;
#25;   clr = 0; in = 0; s1 =1; s0 = 1;
#100; $finish;
end

endmodule
