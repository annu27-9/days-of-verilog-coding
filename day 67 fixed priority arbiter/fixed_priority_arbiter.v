`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 15:24:30
// Design Name: 
// Module Name: fixed_priority_arbiter
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


module fixed_priority_arbiter(in,clk,rst,out);
input [3:0] in;// requestors
input clk,rst;
output reg [3:0] out; // grant access to requestors

always@(posedge clk)
begin
 if(rst)
  out<= 0;   
  
 else if (in[3])
  out <= 4'b1000; 
   else if (in[2])
  out <= 4'b0100; 
   else if (in[1])
  out <= 4'b0010; 
   else if (in[0])
  out <= 4'b0001; 
  
 end
endmodule
