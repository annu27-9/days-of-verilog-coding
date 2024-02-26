`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 02:34:38
// Design Name: 
// Module Name: DECADE_COUNTER
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


module DECADE_COUNTER(clk,reset,q);
    input clk;
    input reset;
    output reg [3:0] q;
    always @(posedge clk)
        begin
            if (reset )
                q<=1'd1;
            else if ( reset ==0 && q<10)
                	q<=q+1;
            else if (reset ==0 && q ==4'd10)
                q<=4'd1;
        end
   
endmodule
