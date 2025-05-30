`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 23:43:44
// Design Name: 
// Module Name: ALU_1_tb
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


module ALU_tb;
reg[2:0]opcode;
reg[7:0]operand1;
reg[7:0]operand2;
wire[15:0]result;
wire flagC;
wire flagZ;

reg[2:0]count = 3'd0;

ALU uut(.opcode(opcode),.operand1(operand1),.operand2(operand2),
.result(result),.flagC(flagC),.flagZ(flagZ));
initial begin
opcode = 3'b0;
operand1 = 8'd0;
operand2 = 8'd0;

#100;

operand1 = 8'hAA; 
operand2 = 8'h55; 
for(count=0; count<8; count= count + 1'b1)
begin
 opcode = count;
 #20;
 end 
 end 
endmodule
