`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2023 20:40:17
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb;
reg [31:0]Ip1;
reg [3:0]sel_i1;
reg [3:0]sel_o1;
reg [3:0]sel_o2;
reg RD,WR,EN,CLK,rst;

wire [31:0]op1,op2;

register_fileWR uut(.Ip1(Ip1),.sel_i1(sel_i1),.op1(op1),.sel_o1(sel_o1),.op2(op2),.sel_o2(sel_o2),.RD(RD),.WR(WR),.rst(rst),.EN(EN),.CLK(CLK));
initial
begin
Ip1 = 32'b0;
sel_i1 = 4'b0;
sel_o1 = 4'b0;
sel_o2 = 4'b0;
RD = 1'b0;
WR = 1'b0;
rst = 1'b1;
EN = 1'b0;
CLK = 1'b0;

#100;
rst = 1'b0;
EN = 1'b1;
#20;
WR = 1'b1; 
RD = 1'b0; 
Ip1 = 32'habcdefab;
sel_i1 = 4'h0; 

#20;
Ip1 = 32'h01234567;
sel_i1 = 4'h1;

#20;
WR = 1'b0; 
RD = 1'b1;
sel_o1 = 4'h0;
sel_o2 = 4'h1;
end 
always  
begin
#10;
CLK = ~CLK;
end  

endmodule
