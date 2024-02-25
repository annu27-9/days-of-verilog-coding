`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 13:06:26
// Design Name: 
// Module Name: JK_tb
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

module JK_tb();
reg j,k,clk,reset;
wire Q,Q_bar;
jk_flipflop uut(.j(j),.k(k),.clk(clk),.reset(reset),.Q(Q),.Q_bar(Q_bar));
  initial 
   begin
    clk = 0;
    forever #1 clk = ~clk;
   end 
 initial 
  begin
     reset = 1;
     #5 reset = 0; 
  end 
  initial 
   begin
    #10 j = 0; k = 0;
    #10  j = 0; k = 1;
    #3 reset = 1;
    #10  j = 1; k = 0;
    #3 reset = 0;
    #10  j = 1; k = 1;
    #100 $finish;
  end 
endmodule