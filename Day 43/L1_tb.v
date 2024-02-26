`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 15:42:27
// Design Name: 
// Module Name: L1_tb
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


module L3_tb;
reg clk,areset,bump_left,bump_right,ground,dig;
wire walk_left,walk_right,aaah,digging;
L3 uut(.clk(clk),.areset(areset),.bump_left(bump_left),.bump_right(bump_right),.walk_left(walk_left),.walk_right(walk_right),.ground(ground),.aaah(aaah),
.digging(digging),.dig(dig));
always #3 clk = ~clk; 
always #12 areset = ~ areset;
initial 
begin
areset = 0; bump_left = 0; bump_right = 0; clk = 0; ground = 0; dig = 0;
#10 bump_left = 0;
#10 bump_right = 0;
#10 bump_left = 1;
#10 bump_right = 1;
#10 ground = 1;
#10 bump_left = 0;
#10 bump_right = 0;
#10 bump_left = 1;
#10 bump_right = 1;
#10 dig = 1;
#10 bump_left = 0;
#10 bump_right = 0;
#10 bump_left = 1;
#10 bump_right = 1;
#10 ground = 1;
#10 bump_left = 0;
#10 bump_right = 0;
#10 bump_left = 1;
#10 bump_right = 1;
end
endmodule
