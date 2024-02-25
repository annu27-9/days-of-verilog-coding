`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 10:06:39
// Design Name: 
// Module Name: HA_tb
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


module HA_tb;
reg A,B;
wire S,C;
HA uut(A,B,S,C); 
initial
begin
A = 0; B = 0; 
#10 A=0; B =1; 
#10 A=1; B =0;
#10 A=1; B = 1; 

#7$finish;
end
endmodule
