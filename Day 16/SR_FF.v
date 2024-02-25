`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 23:22:54
// Design Name: 
// Module Name: SR_FF
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

module sr_ff(q, qbar, s, r, clk,rst);

input s,r,clk,rst; 
output reg  q;
output qbar;

always@(posedge clk)
begin
if(rst)
 q<= 0;
 else
 case({s,r})

    2'b0_0:q<=q;
    2'b0_1:q<=1'b0;
    2'b1_0:q<=1'b1;
    2'b1_1:q<=1'bz;
endcase
end
assign qbar = ~q;

endmodule