`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 22:45:05
// Design Name: 
// Module Name: fibo_series
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


module fibo_series(clk,rst,fib_out);
input clk,rst;
output [31:0]fib_out;
reg [31:0] previous,present;// define previous and present 
initial 
begin
previous = 0;//initialize present and previous
present = 1;
end
always@(posedge clk )
begin
 if(~rst)
   begin
    previous <= 0;
    present <= 1;
   end  
 else
  begin
   previous <= present;
   present <= fib_out; 
  end 
end
assign fib_out = previous + present;
endmodule
