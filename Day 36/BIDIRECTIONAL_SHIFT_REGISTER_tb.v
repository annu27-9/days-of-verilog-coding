`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 16:23:46
// Design Name: 
// Module Name: BIDIRECTIONAL_SHIFT_REGISTER_tb
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


module BIDIRECTIONAL_SHIFT_REGISTER_tb;
reg in,clr,clk,mode;
wire [3:0] out;

 BIDIRECTIONAL_REGISTER dut(in,mode,clk,clr,out);

always #1 clk=~clk;

initial begin

#0; in=0; clk=0; mode=0; clr=0;
#4; in=1; clr=1; 
#5; mode=1; clr=0;
#5; in=0;
#5; in=1;
#5; mode=0;
#30; $finish;

end

endmodule

