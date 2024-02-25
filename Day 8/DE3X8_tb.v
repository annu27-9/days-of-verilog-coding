`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 00:28:41
// Design Name: 
// Module Name: DE3X8_tb
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


module DE3X8_tb;
wire [7:0] Y;
reg [2:0] X;


DE3X8 uut(X,Y);

initial begin  
#10;
 X = 3'b000;     #100;
        X = 3'b001;     #100;
        X = 3'b010;     #100;
        X = 3'b011;     #100;
        X = 3'b100;     #100;
        X = 3'b101;     #100;
        X = 3'b110;     #100;
        X = 3'b111;     #100;
       
end
endmodule
