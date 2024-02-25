`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 11:40:32
// Design Name: 
// Module Name: MUX2X1_tb
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


//module MUX2X1_tb;
//reg[1:0]I;
//reg S;
//wire Y;

//MUX2X1 uut(I,S,Y);
//initial
//begin

//I[0]=0; I[1]=0; S=0;
//#10 I[0]=0; I[1]=1; S=0;
//#10 I[0]=1; I[1]=0;S=0;
//#10 I[0]=1; I[1]=1; S=0;
//#10 I[0]=0; I[1]=0;S=1;
//#10 I[0]=1; I[1]=0; S=1;
//#10 I[0]=0; I[1]=1; S=1;
//#10 I[0]=1; I[1]=1; S=1;
//#10 I[0]=0; I[1]=0; S=0;
//#10 $finish;

//end

//endmodule

module mux_2x1_tb;
       reg [1:0]I;
		reg S;
		wire Y;
		parameter  stop_time=100;
	
		MUX2X11 uut (.Y(Y),.I(I),.S(S));
		initial 
		begin
		S = 0; I = 2'b00;
		#100 S = 0; I = 2'b01;
		#100 S = 0; I = 2'b10;
		#100 S = 0; I = 2'b11;
		#100 S = 1; I = 2'b00;
		#100 S = 1; I = 2'b01;
		#100 S = 1; I = 2'b10;
		#100 S = 1; I = 2'b11;
		end
	endmodule
