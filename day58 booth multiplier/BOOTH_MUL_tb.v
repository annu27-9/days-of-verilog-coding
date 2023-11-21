`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 14:33:55
// Design Name: 
// Module Name: BOOTH_MUL_tb
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


module BOOTH_MUL_tb;
  reg [3:0] m,q0;
  wire [7:0] Mul;
  
  BOOTH_MUL uut (m,q0,Mul);
  
  initial begin
    
    #0; m=0; q0=0;
    #7; m=4'ha; q0=4'h3;
    #7; m=4'h6; q0=4'h9;
    #7; m=4'hf; q0=4'h9;
    #7; m=4'ha; q0=4'hb;
    #17; $finish;
   
  end
endmodule
