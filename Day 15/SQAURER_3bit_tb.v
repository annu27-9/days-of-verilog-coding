`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2023 11:56:43
// Design Name: 
// Module Name: SQAURER_3bit_tb
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


module SQAURER_3bit_tb;
reg a2,a1,a0; 
wire Y5,Y4,Y3,Y2,Y1,Y0;
// INSTANTIATE MODULE
SQUARER_3bit uut(Y0,Y1,Y2,Y3,Y4,Y5,a2,a1,a0);
initial 
begin
a2 = 0; a1 = 0; a0 = 0;
#10 a2 = 0; a1 = 0; a0 = 1;
#10 a2 = 0; a1 = 1; a0 = 0;
#10 a2 = 0; a1 = 1; a0 = 1;
#10 a2 = 1; a1 = 0; a0 = 0;
#10 a2 = 1; a1 = 0; a0 = 1;
#10 a2 = 1; a1 = 1; a0 = 0;
#10 a2 = 1; a1 = 1; a0 = 1;
#2 $finish;
end
endmodule
