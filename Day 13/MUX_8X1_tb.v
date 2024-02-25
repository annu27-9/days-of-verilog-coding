`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2023 10:59:59
// Design Name: 
// Module Name: MUX_8X1_tb
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


//module MUX_8X1_tb;
//wire Y;
//reg I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
//MUX8X1 uut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .S0(S0), .S1(S1), .S2(S2), .Y(Y)); 
//initial 
//begin
//I0=1'b0; I1=1'b0; I2=1'b0; I3=1'b0; I4=1'b0; I5=1'b0; I6=1'b0; I7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; 
//#500 $finish; 
//end
//always #1 I0=~I0;
//always #2 I1=~I1;
//always #3 I2=~I2;
//always #4 I3=~I3;
//always #5 I4=~I4;
//always #6 I5=~I5;
//always #7 I6=~I6;
//always #8 I7=~I7;
//always #9 S0=~S0;
//always #10 S1=~S1;
//always #11 S2=~S2;
//always@(I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7 or S0 or S1 or S2) 
//$monitor("At time = %t, ouput = %d", $time, Y); 
//endmodule
`timescale 1ns/1ps
module top; 
wire out;
reg D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2;
m8X1 name(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .S0(S0), .S1(S1), .S2(S2), .out(out)); 
initial 
begin
D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; 
#500 $finish; 
end 
always #1 D0=~D0;
always #2 D1=~D1;
always #3 D2=~D2;
always #4 D3=~D3;
always #5 D4=~D4;
always #6 D5=~D5;
always #7 D6=~D6;
always #8 D7=~D7;
always #9 S0=~S0;
always #10 S1=~S1;
always #11 S2=~S2;
always@(D0 or D1 or D2 or D3 or D4 or D5 or D6 or D7 or S0 or S1 or S2) 
$monitor("At time = %t, Output = %d", $time, out); 
endmodule;