`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2023 19:22:52
// Design Name: 
// Module Name: sync_fifo_tb
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


//module sync_fifo_tb;
//reg [7:0] data_in;
//reg clk,rst,rd,wr;
//wire empty , full;
//wire [3:0] fifo_cnt;
//wire [7:0] data_out;

//sync_fifo uut(.data_in(data_in),.clk(clk),.rst(rst)
//,.rd(rd),.wr(wr),.empty(empty),.full(full),.fifo_cnt(fifo_cnt)
//,.data_out(data_out));
// always #2 clk=~clk;
  
//  initial begin
    
//    #0; data_in=0; clk=0; rst=0; wr=0; rd =0;
//    #3; rst=1;
//    #3; rst=0; wr =1; data_in=8'ha1;
//    #3; data_in=8'h17; 
//    #6; wr =0; rd =1; 
//    #25; $finish;

//  end
//endmodule


module sync_fifo_tb;
  reg [7:0] in; 
  reg clk,rst,wr,rd; //wt_en is write enable and rd_en is read enable
  wire [7:0] out; 
  wire [3:0] fifo_cnt;
  wire empty,full; 
  
  fifo dut(in,wr,rd,clk,rst,out,fifo_cnt,empty,full);
  
  always #3 clk=~clk;
  
  initial begin
    
    #0; in=0; clk=0; rst=0; wr =0; rd =0;
    #3; rst=1;
    #8; rst=0; wr=1; in=8'hb3;
    #8; in=8'haa; 
    #8; wr =0; rd =1; 
    #45; $finish;

  end
endmodule