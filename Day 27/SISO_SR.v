`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 01:35:17
// Design Name: 
// Module Name: SISO_SR
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


module SISO_SR(clk,Si,S0);
input Si;
input clk;
output S0;
reg [3:0]q;

always@(posedge clk)
begin 

    q[3] <= Si;
    q[2] <= q[3];
    q[1]<= q[2];
    q[0]<= q[1];
    
end
  assign S0 = q[0];
endmodule
