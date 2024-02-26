`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 14:17:35
// Design Name: 
// Module Name: SLOW_COUNTER
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


module SLOW_COUNTER (clk,slow,rst,q);
    input clk;
    input slow;
    input rst;
    output reg [3:0] q;
    always @(posedge clk)
        begin
            if (rst) 
                q<=4'd0;
            else 
                begin 
                    if ( q<4'd9 && slow ==1)
                     q = q+1;
                    else if ( q==4'd9 && slow ==1)
                        q<= 4'd0;
                end
            
        end
endmodule