`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 00:44:07
// Design Name: 
// Module Name: single_PORT_RAM
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
module single_PORT_RAM(clk,data_in,rd,wr,addr,data_out);
input clk,rd,wr;
input [7:0]data_in;
input [2:0] addr;
output [7:0]data_out;

reg [7:0]ram[0:7];

always@(posedge clk)
begin
if(wr)
 ram[addr] <= data_in;
end   
assign data_out = rd?ram[addr]:8'bzzzzzzzz;
endmodule