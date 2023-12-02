`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2023 18:25:09
// Design Name: 
// Module Name: sync_fifo
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

//module sync_fifo(input [7:0] data_in,input clk,rst,rd,wr,
//output empty,full,output reg [3:0]fifo_cnt,
//output reg [7:0] data_out);

//reg [7:0] fifo_ram [0:7];
//reg [2:0] rd_ptr ,wr_ptr;

//assign empty = (fifo_cnt == 0); // empty condition shown by empty flag
//assign full = (fifo_cnt == 8);  // full condition shown by full flag

//// write operation
//always@(posedge clk)
// begin : write
//   if(wr && !full)
//    fifo_ram[wr_ptr] <= data_in;
//   else if(wr && rd)
//     fifo_ram[wr_ptr] <= data_in;
//  end
  
  
//  // read operation
// always@(posedge clk)
// begin : read
//   if(rd && !empty)
//  data_out <= fifo_ram[rd_ptr];
//   else if(wr && rd)
//   data_out <= fifo_ram[rd_ptr];
//  end
  
//  // pointer
//  always@(posedge clk)
//  begin : pointer
//   if(rst)
//    begin
//     wr_ptr <= 0;
//     rd_ptr <= 0;
//    end
//   else
//    begin
//     wr_ptr <= (( wr && !full) || (wr && rd))? wr_ptr +1 : wr_ptr;
//     rd_ptr <= ((rd && !empty)|| (wr && rd)) ? rd_ptr + 1: rd_ptr;
//    end
//  end
  
//// counter 

//always@(posedge clk)
//begin : count
// if(rst)
//  fifo_cnt <= 0;
// else
//  begin
//  case ({wr,rd})
   
//   2'b00 : fifo_cnt <= fifo_cnt;
//   2'b01 : fifo_cnt <= (fifo_cnt == 0)? 0 : fifo_cnt -1;
//   2'b10 : fifo_cnt <= (fifo_cnt == 8)? 8 : fifo_cnt+1;
//   2'b11 : fifo_cnt <= fifo_cnt;
//   default : fifo_cnt <= fifo_cnt;
//  endcase
// end
//end 
   
//endmodule

module sync_fifo(in,wr,rd,clk,rst,out,fifo_cnt,empty,full);
  input [7:0] in; //8 bits input of FIFO
  input clk,rst,wr,rd; //wr is write enable and rd is read enable
  output reg [7:0] out; //8 bits output of FIFO
  output reg [3:0] fifo_cnt; // counter 
  output reg empty,full; 
  
  reg [7:0] ram[7:0];
  reg [3:0] wt_ptr, rd_ptr; // pointer
  
  //to identify pointer
  
  always@(posedge clk or posedge rst)
    begin
      
      if(rst)
        begin
          wt_ptr <= 0;
          rd_ptr <= 0;
        end
      else
        begin
          if(!full & wr) //pointer to write on memory
            wt_ptr <= wt_ptr+1;
          else
            wt_ptr <= wt_ptr;
          
          if(!empty & rd) //pointer to read from memory
            rd_ptr <= rd_ptr+1;
          else
            rd_ptr <= rd_ptr;
        end
    end
  
  //Write section
  
  always@(posedge clk)
    begin
      if(!full & wr)
        ram[wt_ptr] <= in;
      else
        ram[wt_ptr] <= ram[wt_ptr];
    end
  
  //Read section
  
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      out <= 8'd0;
    else
      begin
        if(!empty & rd)
          out <= ram[rd_ptr];
        else 
          out <= out;
      end
  end
  
  //fifo_cnt section
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        fifo_cnt <= 0;
      else if((!full & wr) && (!empty & rd))
        fifo_cnt <= fifo_cnt;
      else if(!full & wr)
        fifo_cnt <= fifo_cnt + 1;
      else if(!empty & rd)
        fifo_cnt <= fifo_cnt - 1;
      else
        fifo_cnt <= fifo_cnt;
    end
  
  //empty is used to get to know if memory is empty
  //full is used to get to know if memory is full
  
  always@(fifo_cnt)
    begin
      empty <= fifo_cnt==0;
      full <= fifo_cnt==64;
    end

endmodule
        