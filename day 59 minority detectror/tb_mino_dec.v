`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 11:10:24
// Design Name: 
// Module Name: tb_mino_dec
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


module tb_mino_dec;
  reg x,y,z;
    wire out;
    integer i;
    
 mino_dec uut(.x(x),.y(y),.z(z),.out(out));
    initial
    begin 
        x=1'b0;
        y=1'b0;
        z=1'b0;
    end
    
    
    initial
    begin
        for(i=0;i<8;i=i+1)
        begin
            {x,y,z}=i;
            #10;
        end
    end
    
    initial
    begin
        $monitor(" input x=%b y=%b z=%b  out=%b",x,y,z,out);
        #100;
        $finish;
    end
endmodule
