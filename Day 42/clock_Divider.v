`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 23:53:09
// Design Name: 
// Module Name: clock_Divider
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


module clock_Divider(clk_in,clk_out);
  input clk_in;
  output clk_out;
  reg [2:0]i;
  initial i=0;

  always@(posedge clk_in)
    begin
      i<=i+1;
    end
  assign clk_out=i[2];
endmodule
