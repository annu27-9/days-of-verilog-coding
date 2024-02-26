`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 16:47:44
// Design Name: 
// Module Name: QUESTION_2
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



   module FSM2(
    input clk,
    input reset,    // Asynchronous reset to OFF
    input A,
    input B,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;
    
    always @(*) begin
        // State transition logic
        case (state)
            OFF : next_state <= A?ON:OFF;
            ON : next_state <= B? OFF:ON;
        endcase
    end

    always @(posedge clk, posedge reset) begin
        // State flip-flops with asynchronous reset
        if (reset)
            state <= OFF;
        else 
            state <= next_state;
    end

    // Output logic
    assign out = (state == OFF)? 0:1;

endmodule

