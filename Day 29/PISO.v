`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 01:25:08
// Design Name: 
// Module Name: PISO
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


module PISO_SR(clk,d,mode,S0);
input clk,mode;
input[3:0]d;
output S0; 
reg[3:0]q;

always@(posedge clk)
begin 
     if(mode)
        q<=d;
      else
      begin 
      q[3]<= 1'bx;
      q[2]<= q[3];
      q[1]<= q[2];
      q[0]<= q[1];
      end
 end 
 assign S0 = q[0];
endmodule
