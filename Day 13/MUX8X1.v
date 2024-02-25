`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 12:36:22
// Design Name: 
// Module Name: MUX8X1
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

//8X1MUX USING 4X1 MUX
//module MUX2X1(I2,S2,Y2);
//input [1:0]I2;
//input S2;
//output Y2;

//assign Y2=S2?I2[1]:I2[0];

//endmodule

//module MUX4X1(I1,S1,Y1);
//input [3:0]I1;
//input [1:0]S1;
//output Y1;

//assign Y1=I1[S1];
//endmodule

//module MUX8X1(I,S,Y);
//input [7:0]I;
//input [2:0]S;
//output Y;
//wire [1:0]W;
//MUX4X1 M1(I[7:4],S[1:0],W[1]);
//MUX4X1 M2(I[3:0],S[1:0],W[0]);
//MUX2X1 M3(W[1:0],S[2],Y);
//endmodule

module m8X1(out, D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2);
input wire D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2;
output reg out;
always@(*)
begin
case(S0 & S1 & S2)
3'b000: out=D0;
3'b001: out=D1;
3'b010: out=D2;
3'b011: out=D3;
3'b100: out=D4;
3'b101: out=D5;
3'b110: out=D6;
3'b111: out=D7;
default: out=1'b0;
endcase
end
endmodule

//8X1 MUX USING STRUCTURAL MODELLING
//module MUX8X1(I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);
//wire T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11;
//input I0, I1, I2, I3, I4, I5, I6, I7,S0,S1,S2;
//output Y;
//not G1(T1, S0);
//not G2(T2, S1);
//not G3(T3, S2);
//and G4(T4, I0, T1, T2, T3), (T5, I1, S0, T2, T3);
//and G5(T6, I2, T1, S1, T3), (T7, I3, S0, S1, T3);
//and G6(T8, I4, T1, T2, S2), (T9, I5, S0, T2, S2);
//and G7(T10, I6, T1, S1, S2), (T11, I7, S0, S1, S2);
//or G8(Y, T4, T5, T6, T7, T8, T9, T10, T11);
//endmodule

//8X1 MUX USING DATAFLOW MODELLING
//module MUX8X1( Y, I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2);
//output Y;
//input I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
//assign S1bar=~S1;
//assign S0bar=~S0;
//assign S2bar=~S2;
//assign Y = (I0 & S2bar & S1bar & S0bar) | (I1 & S2bar & S1bar & S0) | (I2 & S2bar & S1 & S0bar) + (I3 & S2bar & S1 & S0) + (I4 & S2 & S1bar & S0bar) + (I5 & S2 & S1bar & S0) + (I6 & S2 & S1 & S0bar) + (I7 & S2 & S1 & S0);
//endmodule

//8X1 MUX USING BEHAVIOURAL  MODELLING
//module MUX8X1(Y, I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2);
//input wire I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
//output reg Y;
//always@(*)
//begin
//   case(S0 & S1 & S2)
//    3'b000: Y=I0;
//    3'b001: Y=I1;
//    3'b010: Y=I2;
//    3'b011: Y=I3;
//    3'b100: Y=I4;
//    3'b101: Y=I5;
//    3'b110: Y=I6;
//    3'b111: Y=I7;
//    default: Y=1'b0;
//   endcase
//end
//endmodule