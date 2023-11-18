`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 15:01:40
// Design Name: 
// Module Name: ARRAY_MUL_tb
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


module ARRAY_MUL_tb;
  reg [3:0] a,b;
  wire [7:0] mul;
  
  ARRAY_MUL uut(a,b,mul);
  
  initial begin
   
    #0; a=0; b=0;
    #3; a=4'h3; b=4'h4;
    #3; a=4'hb; b=4'hb;
    #3; a=4'hf; b=4'hd;
    #3; $finish;
   
  end

endmodule
