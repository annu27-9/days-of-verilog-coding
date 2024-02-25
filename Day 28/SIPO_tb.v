`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 13:06:00
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb;

reg clk;
reg Si; 

wire[3:0]q;

SIPO_SR uut(.clk(clk),.Si(Si),.q(q));

initial begin

clk =0;
Si = 1;  
#11;
Si = 0;  
#11;
Si = 0; 
#11;
Si = 1; 
#50 $finish;
end
   always #4 clk = ~clk;
   
endmodule