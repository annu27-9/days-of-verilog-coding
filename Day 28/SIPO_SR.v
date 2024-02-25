`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 12:31:02
// Design Name: 
// Module Name: SIPO_SR
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


module SIPO_SR(clk,Si,q);
input clk,Si;
output reg [3:0]q;

always@(posedge clk)
begin
   q[3] <= Si;
   q[2] <= q[3];
   q[1] <= q[2];
   q[0] <= q[1];
 end
endmodule
