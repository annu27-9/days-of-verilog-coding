`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 19:25:18
// Design Name: 
// Module Name: Fact_tb
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


module Fact_tb;


parameter WIDTH = 4;
reg [WIDTH-1:0] in; 
wire [(WIDTH*11)-1:0] facto;

Fact uut(.in(in),.facto(facto));
initial 
begin
in = 0;
#6 in = 4'h6;
#6 in = 4'h7;
#6 in = 11;
#6 in = 13;
#6 in = 15;
#6 in = 14;
#23 $finish;

end
endmodule
