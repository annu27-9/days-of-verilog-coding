`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2023 00:41:56
// Design Name: 
// Module Name: D_FF
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
//module sbrbff(sb,rb,q,qb);
//output q,qb;
//input sb,rb;
//nand G1(q,sb,qb);
//nand G2(qb,rb,q);
//endmodule

//module D_FF(d,en,q,qb);
//input d,en; 
//output q,qb;
//wire dd,sb,rb;
//not G3(dd,d); 
//nand G4(sb,d,en);
//nand G5(rb,dd,en);
//sbrbff d_latch(sb,rb,q,qb);
//endmodule



module D_flipflop (
  input clk, rst_n,
  input d,
  output reg q
  );
  
  always@(posedge clk) begin
    if(rst_n) q <= 0;
    else       q <= d;
  end
  
endmodule