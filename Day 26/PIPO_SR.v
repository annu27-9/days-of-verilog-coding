`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2023 15:39:47
// Design Name: 
// Module Name: PIPO_SR
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


module PIPO_SR(clk,d,q);
input clk;  
input [3:0]d;
output reg [3:0]q;
always@(posedge clk)
begin
     q[3]<=d[3];
     q[2]<=d[2];
     q[1]<=d[1];
     q[0]<=d[0];
end
endmodule
