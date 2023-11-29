`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 08:08:11
// Design Name: 
// Module Name: palindrome_detec
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


module palindrome_detec(clk,data_in,is_palindrome);
input clk; 
input [7:0] data_in;
output reg is_palindrome;


integer i;   
reg [7:0] reverse_in;


always@(*)
 begin
  for(i = 0; i<8; i = i +1)
   begin
   reverse_in[i] = data_in[7-i];
   end
 end
 
 
 
always@(posedge clk)
begin
 if(data_in == reverse_in)
 is_palindrome <= 1;
 else
 is_palindrome <= 0;
end
endmodule
