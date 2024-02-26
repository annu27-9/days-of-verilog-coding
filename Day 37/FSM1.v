`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 09:56:08
// Design Name: 
// Module Name: FSM1
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


module FSM1(
    input clk,
    input reset,    
    input in,
    output reg out);

    parameter S1=1, S2=0; 
    reg state, next_state;

    always @(*) begin    
        case ( state) 
            S1: next_state = in ? S1:S2;
            S2 : next_state = in?S2:S1;
        endcase
    end
    always @(posedge clk, posedge reset) begin    
        if (reset)
            state<=S1;
        else 
            state<=next_state;
    end
    
    always @(state)begin
        case(state)
            S1: out <=1;
            S2: out <= 0;
        endcase
    end
endmodule
