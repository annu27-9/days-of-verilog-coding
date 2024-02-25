`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 00:40:45
// Design Name: 
// Module Name: JK_FF_tb
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


//module jk_ff_test_bench;
//reg clk,rst,j,k;
//wire q_n,q_n_bar;

//  jk_flipflop test_design(j,k,clk,rst,q_n,q_n_bar);
  
//  initial begin 
//  clk=0;
//  forever #1 clk=~clk;
//  end
  
//  initial 
//    begin
//     rst=0;
//     #10;

//     rst=0;
//     #10;

//     j = 1'b0;
//     k = 1'b0;     
//     #10 rst = 1;
    
//     j = 1'b0;
//     k = 1'b1;     
//     #10 rst = 0;
     
     
//     j = 1'b1;
//     k = 1'b0;     
//     #10;
     
//     j = 1'b1;
//     k = 1'b1;
//     #10;
  
//     $finish;
//    end 
//endmodule
module JK_FF_tb;
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
    #7 reset = 0;
    #10  j = 1; k = 1;
    #100 $finish;
  end 
endmodule