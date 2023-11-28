`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 10:31:38
// Design Name: 
// Module Name: pwm_tb
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


module pwm_tb;
  parameter R=4;
  reg clk,rst;
  reg [R-1:0] duty;
  wire out;
  
  PWM uut(clk,rst,duty,out);
  
  always #1 clk=~clk;
  
  initial begin
    
    #0; clk=0; rst=1; duty=0;
    #3; rst=0; duty=0.25*(2**R); //25% duty cycle
    #30; duty=0.50*(2**R);       //50% duty cycle
    #32; duty=0.75*(2**R);       //75% duty cycle
    #100; $finish;

  end
    
endmodule
