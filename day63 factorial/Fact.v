`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 18:59:37
// Design Name: 
// Module Name: Fact
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


module Fact(in,facto);
parameter WIDTH = 4;
input [WIDTH-1:0] in; 
output [(WIDTH*11)-1:0] facto;
reg [(WIDTH*11)-1:0] facto;

integer i;
always@(*)
 begin 
  facto = 1;
  i = 0 ;
   while(i<in)
   begin
   i = i +1;
    facto = facto*i;
   end
  end
endmodule
