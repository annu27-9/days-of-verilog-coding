`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 20:45:47
// Design Name: 
// Module Name: tb
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


module tb;
reg clk,areset,in;  
wire out ;  

Q4 uut(.clk(clk),.areset(areset),.in(in),.out(out)); 
always #2 clk = ~clk;
initial begin
clk = 0;
#10 areset = 1 ; in = 1;
#10 areset = 0 ; in = 0;
#10 areset = 0 ; in = 1;
#10 areset = 1 ; in = 0;
#10 areset = 1 ; in = 1;
end



endmodule
