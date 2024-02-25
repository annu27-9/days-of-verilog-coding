`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 03:22:27
// Design Name: 
// Module Name: ENCODER4X2_tb
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


module ENCODER4X2_tb;
reg [3:0]D;
reg E;
wire [1:0]I;

Encoder4to2_bh uut(D,E,I);
initial
begin
if(E==0);


end
endmodule
