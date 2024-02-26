`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 00:49:37
// Design Name: 
// Module Name: ROM
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


module ROM(addr,clk,en,data);
  input [3:0] addr; //address
  input clk,en;     //en is enable
  output reg [3:0] data; 
  
  reg [3:0] rom [15:0]; //4 bit data and 16 location
  
  always@(posedge clk)
    begin
      
      if(en)
        data <= rom[addr];
      else
        data <= 4'bxxxx;
      
    end
  
  integer i;
  
  initial begin 

    for(i=0;i<=15;i=i+1)
      begin
        rom[i]=15-i;
        end 
  end
endmodule
