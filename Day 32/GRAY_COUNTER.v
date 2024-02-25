`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 20:36:39
// Design Name: 
// Module Name: GRAY_COUNTER
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


module GRAY_COUNTER(clk,rst,out);
parameter N =4;
input clk,rst;
output reg[N-1:0] out;  
integer i;
reg [N-1:0]q;

always@(posedge clk)
  begin
    if(!rst)
     begin
      q <= 0;
        out <= 0;
     end  
    else
     begin
      q <= q +1;
`ifdef FOR_LOOP     
      for(i = 0; i< N-1 ; i = i+1)
       begin
        out[i] <= q[i+1] ^ q[i];
       end
       out[N-1] <= q[N-1];
`else
        out <= {q[N-1],q[N-1:1]^q[N-2:0]};
`endif
      end  
  end
endmodule
