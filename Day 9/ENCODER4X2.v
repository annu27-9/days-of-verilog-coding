`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 03:17:04
// Design Name: 
// Module Name: ENCODER4X2
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



module Encoder4to2_bh(D,E,I);
input [3:0] D;
input E;
output reg [1:0] I;
always @(D,E)
 begin
 casex({E,D})
5'b11xxx: I = 2'b11;
5'b101xx: I = 2'b10;
5'b1001x: I = 2'b01;
5'b10001: I = 2'b00;
default: I = 2'bzz;
 endcase
 end
endmodule

