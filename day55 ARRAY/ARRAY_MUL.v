`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 00:19:35
// Design Name: 
// Module Name: ARRAY_MUL
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


//module ARRAY_MUL(a,b,mul);
//input [3:0]a,b;
//output [7:0] mul;
//wire s0, h_s1,h_c1,h_s2,h_c2,
//h_s3,h_c3,f_s1,f_c1,f_s2,f_c2,f_s3,f_c3,
//f_s4,f_c4,f_s5,f_c5,f_s6,f_c6,f_s7,f_c7,f_s8,f_c8, h_s4,h_c4;
//assign s0 = a[0]&b[0];
//HA H1(a[1]&b[0],a[0]&b[1],h_s1,h_c1);
//HA H2(a[2]&b[0],a[1]&b[1],h_s2,h_c2);
//HA H3(a[3]&b[0],a[2]&b[1],h_s3,h_c3);


//FA F1(a[0]&b[2],h_c1,h_s2,f_s1,f_c1);
//FA F2(a[1]&b[2],h_c2,h_s3,f_s2,f_c2);
//FA F3(a[0]&b[3],f_c1,f_s2,f_s3,f_c3);
//FA F4(a[3]&b[1],a[2]&b[2],h_c3,f_s4,f_c4);
//FA F5(a[1]&b[3],f_c2,f_s4,f_s5,f_c5);
//FA F6(a[3]&b[2],a[2]&b[3],f_c4,f_s6,f_c6);

//HA H4(f_c3,f_s5,h_s4,h_c4);
//FA F7( h_c4, f_c5, f_s6, f_s7, f_c7);
//FA F8( a[3]&b[3], f_c7, f_c6, f_s8, f_c8);
  
//assign mul={f_c8,f_s8,f_s7,h_s4,f_s3,f_s1,h_s1,s0};
//endmodule

//module HA(A,B,S,Cout);
//input A,B;  
//output S,Cout; 

//assign {S,Cout} = A + B; 
//endmodule

//module FA(A,B,Cin,S,Cout);
//input A,B,Cin;  
//output S,Cout; 

//assign {S,Cout} = A + B + Cin; 
//endmodule

module ARRAY_MUL(a,b,mul);
  input [3:0] a,b;
  output [7:0] mul;
  
  wire h_s1,h_s2,h_s3,h_s4,
  	   h_c1,h_c2,h_c3,h_c4,
       f_s1,f_s2,f_s3,f_s4,f_s5,f_s6,f_s7,f_s8,
  	   f_c1,f_c2,f_c3,f_c4,f_c5,f_c6,f_c7,f_c8;
  
  assign s0 = a[0] & b[0];
  
  half_adder h1( a[0]&b[1], a[1]&b[0], h_s1, h_c1);
  half_adder h2( a[1]&b[1], a[2]&b[0], h_s2, h_c2);
  half_adder h3( a[2]&b[1], a[3]&b[0], h_s3, h_c3);
  
  full_adder f1( a[0]&b[2], h_c1, h_s2, f_s1, f_c1);
  full_adder f2( a[1]&b[2], h_c2, h_s3, f_s2, f_c2);
  full_adder f3( a[2]&b[2], a[3]&b[1], h_c3, f_s3, f_c3);
  full_adder f4( a[0]&b[3], f_c1, f_s2, f_s4, f_c4);
  full_adder f5( a[1]&b[3], f_c2, f_s3, f_s5, f_c5);
  full_adder f6( a[2]&b[3], a[3]&b[2], f_c3, f_s6, f_c6);
  
  half_adder h4( f_c4, f_s5, h_s4, h_c4);
  
  full_adder f7( h_c4, f_c5, f_s6, f_s7, f_c7);
  full_adder f8( a[3]&b[3], f_c7, f_c6, f_s8, f_c8);
  
  assign mul={f_c8,f_s8,f_s7,h_s4,f_s4,f_s1,h_s1,s0};

endmodule
  

module half_adder(a,b,s,cout);
  input a,b;
  output s,cout;
  
  assign {cout,s} = a+b;
  
endmodule

module full_adder(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  
  assign {cout,s} = a+b+cin;
  
endmodule
