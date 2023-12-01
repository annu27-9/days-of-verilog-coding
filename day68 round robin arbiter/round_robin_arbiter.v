`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 09:16:05
// Design Name: 
// Module Name: round_robin_arbiter
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


module round_robin_arbiter(in,clk,rst,out);
  input [3:0] in; // inuestors
  input clk,rst;
  output reg [3:0] out; // grant access
  
  parameter [2:0] S_ideal=3'b000; //ideal state
  parameter [2:0] S_0=3'b001; 
  parameter [2:0] S_1=3'b010; 
  parameter [2:0] S_2=3'b011; 
  parameter [2:0] S_3=3'b100;
  
  reg [2:0] present_state, next_state;
  
  
  always@(posedge clk or posedge rst)
    begin
      
      if(rst)
        present_state <= S_ideal;
      else 
        present_state <= next_state;
      
    end
  
  //Next state logic
  
  always@(*)
    begin
      
      case(present_state)
        
        S_ideal :
          begin
            if(in[0])
              next_state = S_0;
            else if(in[1])
              next_state = S_1;
            else if(in[2])
              next_state = S_2;
            else if(in[3])
              next_state = S_3;
            else
              next_state = S_ideal;
          end
        
        S_0 :
          begin
            if(in[1])
              next_state = S_1;
            else if(in[2])
              next_state = S_2;
            else if(in[3])
              next_state = S_3;
            else if(in[0])
              next_state = S_0;
            else
              next_state = S_ideal;
          end
        
        S_1 :
          begin
            if(in[2])
              next_state = S_2;
            else if(in[3])
              next_state = S_3;
            else if(in[0])
              next_state = S_0;
            else if(in[1])
              next_state = S_1;
            else
              next_state = S_ideal;
          end
        
        S_2 :
          begin
            if(in[3])
              next_state = S_3;
            else if(in[0])
              next_state = S_0;
            else if(in[1])
              next_state = S_1;
            else if(in[2])
              next_state = S_2;
            else
              next_state = S_ideal;
          end
        
        S_3 :
          begin
            if(in[0])
              next_state = S_0;
            else if(in[1])
              next_state = S_1;
            else if(in[2])
              next_state = S_2;
            else if(in[3])
              next_state = S_3;
            else
              next_state = S_ideal;
          end

        default :
          begin
            if(in[0])
              next_state = S_0;
            else if(in[1])
              next_state = S_1;
            else if(in[2])
              next_state = S_2;
            else if(in[3])
              next_state = S_3;
            else
              next_state = S_ideal;
          end
        
      endcase
    end
  
  
  always@(*)
    begin
      case(present_state)
        
        S_0 : out = 4'b0001;
        S_1 : out = 4'b0010;
        S_2 : out = 4'b0100;
        S_3 : out = 4'b1000;
        
        default : out = 4'b0000;
        
      endcase
    end
endmodule
