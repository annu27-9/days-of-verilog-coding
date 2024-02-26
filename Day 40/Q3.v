`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 20:43:42
// Design Name: 
// Module Name: Q3
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


module Q4(
    input clk,
    input in,
    input areset,
    output out); //
    
    reg [1:0]state,next_state;
    parameter A=0,B=1,C=2,D=3;

    always @(*)
        begin
            case(state)
                A: next_state= in?B:A;
                B: next_state= in ?B:C;
                C: next_state= in?D:A;
                D: next_state =in? B:C;
            endcase
        end
                    
    always @(posedge clk, posedge areset)
        begin 
            if(areset)
                state<=A;
            else
                state<=next_state;
        end
    assign out = (state == D) ? 1:0;

endmodule

