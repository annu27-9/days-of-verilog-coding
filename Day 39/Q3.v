`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 20:08:35
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


module Q3(
    input in,
    input [1:0] state,
    output reg [1:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

   //  State transition logic:
    always @(state,in)
        case(state)
                A : next_state = in ? B:A;
                B : next_state = in ? B:C;
                C : next_state = in ? D:A;
                D : next_state = in ? B:C;
            endcase
   
    assign out = (state==D)?1:0; //for a Moore state machine

endmodule

