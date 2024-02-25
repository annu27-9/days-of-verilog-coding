`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2023 14:20:13
// Design Name: 
// Module Name: T_FF
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


module T_FF(
  input clk, rst_n,
  input t,
  output reg q
  );
  
  always@(posedge clk) begin
    if(rst_n) q <= 0;
    else  
    if(t) 
         q <=~q;
    else 
         q<=q;
         
  end
  
endmodule

