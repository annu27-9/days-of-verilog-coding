`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 16:24:46
// Design Name: 
// Module Name: 4X1 MUX  USING 2X1
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

// 4X1 MUX USING 2X1 MUX
module MUX2X1(I[0],I[1],S,Y);
input [1:0]I;
input S;
output Y;
assign Y = S ? I[1] : I[0];
endmodule

module MUX4X1(I, S, Y);
 input [3 : 0] I; 
 input [1: 0] S;
 output Y;
 
 wire [1: 0]W;
 
 MUX2X1 M1(I[0],I[1], S[1], W[0]);
 MUX2X1 M2(I[2],I[3], S[1], W[1]);
 MUX2X1 M3(W[0],W[1],S[0], Y);
 endmodule
 
 
 // 4X1 MUX USING DATAFLOW STYLE
// module MUX4X1(
// input  I0,I1,I2,I3,S0,S1,
// output Y);
// assign Y  = S1 ? (S0 ? I3 : I2) : (S0 ? I1 : I0);
// endmodule
 
// 4X1 MUX USING STRUCTURAL MODELLING 
// module MUX4X1(
// input  I0,I1,I2,I3,S0,S1,
// output Y);
 
// wire sobar, s1bar, T1, T2, T3, T4;

//not G1 (S0bar,S0), (S1bar,S1);
//and G2(T1, I0, S0bar, S1bar), (T2,I1, S0bar, S1),(T3, I2, S0, S1bar), (T4, I3, S0, S1);
//or G3(Y, T1, T2, T3, T4);

//endmodule


//4X1 MUX USING BEHAVIOURAL STYLE
//module MUX4X1( I,S,Y);
//input [3:0]I;
//input [1:0]S;
//output reg Y;

//always @(*)
//	begin
//		case(S)
//			2'b00:Y=I[0];
//			2'b01:Y=I[1];
//			2'b10:Y=I[2];
//			2'b11:Y=I[3];
//			default:Y=1'b0;
//		endcase
//	end
//endmodule