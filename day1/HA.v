`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 10:04:12
// Design Name: 
// Module Name: HA
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
//Half Adder(Structural modelling)
//module HA (A, B, S, C); 
//input A, B;
//output S, C; 
//xor G1(S, A, B); //SUM
//and G2(C, A, B); //CARRY
//endmodule


// Half Adder (Dataflow modelling): 
module HA (A, B, S, C); // HA - Half Adder 
input A, B;
output S, C; // S- Sum , C - Carry
assign S = A ^ B; // sum = A xor B
assign C =A & B; // carry = A and B
endmodule

module FA( A, B, Cin, Sum, Cout); 
input A, B, Cin;
output Sum, Cout;
wire S1, C1, C2;
// Module instantiation HALF ADDER
HA HA1 (A, B, S1, C1);
HA HA2 (S1, Cin, Sum, C2);
or G3 (Cout, C1, C2);
 endmodule