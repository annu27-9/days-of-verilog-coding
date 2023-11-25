`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 19:40:36
// Design Name: 
// Module Name: GCD_tb
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


module GCD_tb;
parameter W = 8;
reg [W-1:0] a,b; 
wire [W-1:0]out;
GCD uut(a,b,out);
initial 
begin
  a = 0; b = 0;
  #13 a = 8'h44; b = 8'h35;
  #13 a = 8'h34; b = 8'h48;
  #13 a = 8'h14; b = 8'h18;
  #13 a = 8'h10; b = 8'h5;
  #13 a = 8'h20; b = 8'h8;
  #47 $finish;
end
endmodule
