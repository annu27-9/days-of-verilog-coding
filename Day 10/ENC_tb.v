`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2023 18:20:31
// Design Name: 
// Module Name: ENC_tb
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


module ENC8X3_tb;

reg [7:0]X;
reg E;
wire [2:0]Y;
ENC8X3 uut(.Y(Y), .E(E),.X(X));
initial
    begin
     E=1;
      X=8'h0_1;
#30;
      X=8'h0_2;
#30;
      X=8'h0_4;
#30;
      X=8'h0_8;
#30;
      X=8'h1_0;
#30;
      X=8'h2_0;	
#30;
      X=8'h4_0;
#30;	
      X=8'h8_0;
#30;	
$finish; 
end
endmodule


