`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 10:35:37
// Design Name: 
// Module Name: SYNC_SRAM
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


module SYNC_SRAM(data_in,data_out,addr,cs,we,rd,clk);
// parameters of RAM
parameter ADDR = 8;
parameter DATA = 8;
parameter DEPTH = 8;
input[DATA-1:0] data_in;
output reg [DATA-1:0] data_out;
input [ADDR-1:0]addr;input clk,cs,we,rd;

// internal variable
reg[DATA-1:0] SRAM[DEPTH-1:0];
always@(posedge clk)
begin
 if(cs == 1'b1)
  begin
 if(we == 1'b1 && rd == 1'b0)
    begin 
     SRAM[addr] = data_in;
    end 
  else if(rd == 1'b1 && we == 1'b0)
     begin
      data_out = SRAM[addr];
     end 
  else;
   end 
 else;
  end
endmodule
