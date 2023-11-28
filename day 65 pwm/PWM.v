`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 10:29:31
// Design Name: 
// Module Name: PWM
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


module PWM(clk,rst,duty,out);
  parameter R=4;
  input clk,rst;
  input [R-1:0] duty;
  output out;
  
  reg [R-1:0] Q_reg,Q_next;

  always@(posedge clk or posedge rst)
    begin
      if(rst)
        Q_reg<=0;
      else
        Q_reg<=Q_next;
    end
  always@(*)
    begin
      Q_next<=Q_reg+1;
    end
  
  assign out=(Q_reg<duty);
  
endmodule
