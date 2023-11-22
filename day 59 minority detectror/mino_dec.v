`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 10:52:14
// Design Name: 
// Module Name: mion_dec
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


module mino_dec(x,y,z,out);
input x,y,z;  
output out;
wire t1,t2,t3; 

 assign t1 = x&y;   
 assign t2 = y&z;
 assign t3 = z&x;  
 
 assign out = ~(t1|t2|t3);
 

endmodule
