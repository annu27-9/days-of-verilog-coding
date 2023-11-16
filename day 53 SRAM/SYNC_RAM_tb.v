`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 11:00:24
// Design Name: 
// Module Name: SYNC_RAM_tb
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


module SYNC_RAM_tb;
reg [7:0] data_in;
reg [7:0] addr;
reg cs,we,rd,clk;
wire [7:0] data_out;

SYNC_SRAM uut (data_in,data_out,addr,cs,we,rd,clk);
always #5 clk = ~clk;

initial
begin
data_in = 8'h0; addr = 8'h0; cs = 0; we = 0; rd = 0; clk = 0;

#100;
data_in = 8'h0; addr = 8'h0; cs = 1; we = 1; rd = 0;
#20;
data_in = 8'h0;
addr = 8'h0; 
#20;
data_in = 8'h1;
addr = 8'h1; 
#20;
data_in = 8'h10;
addr = 8'h2; 
#20;
data_in = 8'h6;
addr = 8'h3; 
#40;
addr = 8'h0;
we = 0;
rd = 1;
#20;
addr = 8'h1;
#20;
addr = 8'h2;
#20;
addr = 8'h3;
#20;
addr = 8'h4;
end
endmodule
