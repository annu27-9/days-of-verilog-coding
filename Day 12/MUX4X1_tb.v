`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 10:29:55
// Design Name: 
// Module Name: MUX4X1_tb
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


module MUX4X1_tb;
wire Y; 
reg [3:0]I;
reg [1:0]S;

MUX4X1 uut(.I(I),.S(S),.Y(Y));

 initial
begin

I = 0; S = 0;
#10 I=4'b0001; S=2'b00;
#10 I=4'b1011; S=2'b00;
#10 I=4'b0101; S=2'b01;
#10 I=4'b1111; S=2'b01;
#10 I=4'b1001; S=2'b10;
#10 I=4'b1101; S=2'b10;
#10 I=4'b1011; S=2'b11;
#10 I=4'b1101; S=2'b11;
#10 I=4'b1000; S=2'b11;
#10 I=4'b1111; S=2'b11;
#10 $finish;
end

endmodule
