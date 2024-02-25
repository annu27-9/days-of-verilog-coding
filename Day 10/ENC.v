`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 00:12:10
// Design Name: 
// Module Name: ENC
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
module ENC8X3(Y,X,E);
output reg [2:0]Y;
input [7:0]X;
input E;
always@(Y,X,E)
if(E==1)
    begin
        if(X[7]==1)
        begin 
            Y=3'b111;
        end
        else if(X[6]==1)
          begin 
            Y=3'b110;
          end
        else if(X[5]==1)
          begin 
            Y=3'b101;
          end
        else if(X[4]==1)
          begin 
            Y=3'b100;
          end
        else if(X[3]==1)
          begin 
            Y=3'b011;
          end
        else if(X[2]==1)
          begin 
            Y=3'b010;
          end
        else if(X[1]==1)
          begin 
            Y=3'b001;
          end
        else if(X[0]==1)
          begin 
            Y=3'b000;
          end
      end
        else;

endmodule
