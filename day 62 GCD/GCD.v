`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 19:30:37
// Design Name: 
// Module Name: GCD
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


module GCD(a,b,out);
parameter W = 8;
input [W-1:0]a,b;
output reg [W-1:0]out;
reg [W-1:0]A,B;
always@(*)
begin
 A = a; 
 B = b;
   while(A!=B)
   begin
    if(A>B)
     A = A - B; 
    else
     B = B - A;
   end
   out =A;
end

endmodule
