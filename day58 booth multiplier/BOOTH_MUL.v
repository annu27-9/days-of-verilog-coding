`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 13:35:10
// Design Name: 
// Module Name: BOOTH_MUL
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


module BOOTH_MUL(m,q0,Mul);
input [3:0]m,q0;//m is multiplicand and q0 is multiplier
output [7:0]Mul;
reg [3:0] Ac;//Ac is Accumulator 
reg q;

reg [8:0] con;

integer i;
initial
begin
Ac = 0; q = 0;  
end
always@(*)
begin

con = {Ac,q0,q};//con is concatenation of Ac, q0 and q
 for(i=0;i<4;i=i+1)
        begin
          
          if({con[1],con[0]} == 2'b00 | {con[1],con[0]} == 2'b11)
            begin con = {con[8],con[8:1]}; end
          
          else if({con[1],con[0]} == 2'b01)
            begin con[8:5] = con[8:5] + m; 
            con = {con[8],con[8:1]}; end
          
          else if({con[1],con[0]} == 2'b10)
            begin con[8:5] = con[8:5] - m; 
            con = {con[8],con[8:1]}; end
          
          else
            begin con = {Ac,q0,q};
             end

        end
     
    end
	 
  assign  Mul = {con[8:1]};
  



endmodule
