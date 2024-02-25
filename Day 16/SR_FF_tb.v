`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 23:34:58
// Design Name: 
// Module Name: SR_FF_tb
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


  
module SR_FF_tb;
reg s,r,clk,rst;
wire q , qbar;

sr_ff uut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qbar(qbar));
  initial 
   begin
    clk = 0;
    forever #1 clk = ~clk;
   end 
 initial 
  begin
     rst = 1;
     #5 rst = 0; 
  end 
  initial 
   begin
    #10 s = 0; r = 0;
    #10  s = 0; r = 1;
    #3 rst = 1;
    #10  s = 1; r = 0;
    #7 rst = 0;
    #10  s = 1; r = 1;
    #100 $finish;
  end 
endmodule
