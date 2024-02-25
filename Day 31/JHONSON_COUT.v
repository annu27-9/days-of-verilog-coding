`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 12:29:46
// Design Name: 
// Module Name: JHONSON_COUT
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


module JHONSON_COUT(clk,rst,out);
 input clk,rst;
 output [3:0] out;
  reg[3:0]q;
 

always @(posedge clk)
begin

if(rst)
 q=4'd0;
 else
 	begin 
 		q[3]<=q[2];
  		q[2]<=q[1];
  		q[1]<=q[0];
   		q[0]<=(~q[3]);
 	end
 end

assign out=q;  
endmodule
