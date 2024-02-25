`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 12:36:02
// Design Name: 
// Module Name: JHON_C_tb
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


module JHON_C_tb;
reg clk,rst;
wire [3:0]out;

JHONSON_COUT uut(.clk(clk),.rst(rst),.out(out));

 always 
    #4 clk =~clk;
  
  initial begin
    rst=1'b1; clk=1'b0;
   #25 rst= 1'b0;
  end
  
  initial 
    begin 
   	 $monitor( $time, " clk=%b, out= %b, rst=%b", clk,out,rst);
  	 #130  $stop;  
   end
   endmodule
 
