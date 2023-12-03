`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 20:54:56
// Design Name: 
// Module Name: Async_fifo
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


module Async_fifo(in,wr,rd,clk1,clk2,rst,out,fifo_cnt,empty,full);
  input [7:0] in; //8 bits input of FIFO
  input clk1,clk2,rst; //clk1 is for write part and clk2 is for read part
  input wr,rd; //wr is write enable and rd is read enable
  output reg [7:0] out; //8 bits output of FIFO
  output reg [6:0] fifo_cnt;
  output reg empty,full; 
  
  reg [7:0] ram [63:0];
  reg [6:0] wt_ptr, rd_ptr;
  
  //to identify pointer to write on memory using clk1
  
  always@(posedge clk1 or posedge rst)
    begin
      
      if(rst)
        begin
          wt_ptr <= 0;
        end
      else
        begin
          if(!full & wr) //Head Section 
            wt_ptr <= wt_ptr+1;
          else if(wt_ptr==64)
            wt_ptr <= 0;
          else
            wt_ptr <= wt_ptr;
          
        end
    end
  
  //to identify pointer to read from memory using clk2
  
  always@(posedge clk2 or posedge rst)
    begin
      
      if(rst)
        begin
          rd_ptr <= 0;
        end
      else
        begin
          if(!empty & rd) //Tail Section
            rd_ptr <= rd_ptr+1;
          else if(rd_ptr==64)
            rd_ptr <= 0;
          else
            rd_ptr <= rd_ptr;
        end
    end  
  
  //Write section
  
  always@(posedge clk1)
    begin
      if(!full & wr)
        ram[wt_ptr] <= in;
      else
        ram[wt_ptr] <= ram[wt_ptr];
    end
  
  //Read section
  
  always@(posedge clk2 or posedge rst)
  begin
    if(rst)
      out <= 0;
    else
      begin
        if(!empty & rd)
          out <= ram[rd_ptr];
        else 
          out <= out;
      end
  end
  
  //fifo_cnt section of clk1
  
  always@(posedge clk1 or posedge rst)
    begin
      if(rst)
        fifo_cnt <= 0;
      else if((!full & wr) && (!empty & rd))
        fifo_cnt <= fifo_cnt;
      else if(!full & wr)
        fifo_cnt <= fifo_cnt + 1;
      else
        fifo_cnt <= fifo_cnt;
    end
  
  //fifo_cnt section of clk2
  
  always@(posedge clk2 or posedge rst)
    begin
      if(rst)
        fifo_cnt <= 0;
      else if((!full & wr) && (!empty & rd))
        fifo_cnt <= fifo_cnt;
      else if(!empty & rd)
        fifo_cnt <= fifo_cnt - 1;
      else
        fifo_cnt <= fifo_cnt;
    end
  

  
  always@(fifo_cnt)
    begin
      empty <= fifo_cnt==0;// empty flag
      full <= fifo_cnt ==64; // full flag 
    end

endmodule
