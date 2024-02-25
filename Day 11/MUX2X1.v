`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 11:34:45
// Design Name: 
// Module Name: MUX2X1
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


// STRUCTURAL MODELLING
module	MUX2X1S(I,S,Y);
input	[1:0]I;
input	S;
output	Y;
wire	S0,W0,W1;
not	G1	(S0,S);
and	G2  (W0,I[0],S0);
and	G3  (W1,I[1],S);
or	G4  (Y,W0,W1);
endmodule





// DATAFLOW MODELLING
module MUX2X11(I,S,Y);
output Y;
input [1:0]I;
input S;

    assign Y = S?I[1]:I[0];
    
endmodule


// BEHAVIOURAL MODELLING
module MUX2X12(I,S,Y);
input [1:0]I;
input S;
output reg Y;
    always @(I,S)
     begin
        if(S==0)
        Y<=I[0];
     else  
     Y<=I[1];
    end 
    endmodule

  
  
      