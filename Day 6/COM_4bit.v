`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 12:15:57
// Design Name: 
// Module Name: COM_4bit
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
// 1-BIT COMPARATOR
//module comp1_bit(E,G,L,A,B);
//output E,G,L;
//input A,B;
//wire w1,w2;
//xnor G1(E,A,B);
//not G2(w1,B);
//not G3(w2,A);
//and G4(G,A,w1);
//and G5(L,B,w2);
//endmodule
//2 BIT COMPARATOR
//module comp2_bit(E2,G2,L2,A0,A1,B1,B0);
//input A0,B0,A1,B1;
//output E2,G2,L2;
//wire E0,E1,G0,G1,L0,L1;
//wire w1,w2;
// INSTANTIATE 1-BIT COMPARATOR
//comp1_bit C1(E0,G0,L0,A0,B0);
//comp1_bit C2(E1,G1,L1,A1,B1);
//and G6(E2,E0,E1);
//and G7(w1,G0,E1);
//and G8(w2,L0,E1);
//or G9(G2,G1,w1);
//or G10(L2,L1,w2);
//endmodule

// module COM_4bit(E,G,L,A,B);
//output E,G,L;
//input [3:0]A;
//input [3:0]B;
//wire E1,E2,G1,G2,L1,L2;
//comp2_bit C3(E1,G1,L1,A[0],A[1],B[0],B[1]);
//comp2_bit C4(E2,G2,L2,A[3],A[2],B[3],B[2]);
//assign E = E1&E2;
//assign L = L2|(E2&G1);
//assign G = G2|(E2&L1);



//endmodule
module comp4bit(E,G,L,A,B);
input [3:0] A,B;
output E,G,L;
assign E = (A==B) ? 1 : 0;
assign G = (A>B) ? 1 : 0;
assign L = (A<B) ? 1 : 0;
endmodule
