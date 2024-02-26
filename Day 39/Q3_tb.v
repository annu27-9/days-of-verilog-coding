`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 20:24:48
// Design Name: 
// Module Name: Q3_tb
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


module Q3_tb;
reg in; 
reg [1:0]state;
wire [1:0]next_state;
wire out; 

Q3 uut(.in(in),.state(state),.next_state(next_state),.out(out));   

initial 
begin
state = 0; in = 0;
#12 state = 2'b00; in = 0;
#12 state = 2'b00; in = 1;
#12 state = 2'b01; in = 0;
#12 state = 2'b01; in = 1;
#12 state = 2'b10; in = 0;
#12 state = 2'b10; in = 1;
#12 state = 2'b11; in = 0;
#12 state = 2'b11; in = 1;
end
endmodule
