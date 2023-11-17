`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2023 00:10:31
// Design Name: 
// Module Name: register_fileWR
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


    module register_fileWR(Ip1,sel_i1,op1,sel_o1,op2,sel_o2,RD,WR,rst,EN,CLK);
    input[31:0]Ip1;
    input[3:0]sel_i1,sel_o1,sel_o2;
    input RD,WR;
    input EN,CLK,rst;
    output reg [31:0]op1,op2;
    reg[31:0]regFile[0:15];
    integer i;
    wire sen;
    assign sen = CLK||rst;
    always@(posedge sen)
    begin
    if(EN == 1)
      begin
        if(rst == 1)
            begin
            for(i = 0; i<16 ;i = i + 1)
                begin
                regFile[i] = 32'h0;
                end
                    op1 = 32'hx;
                    op2 = 32'hx;
            end
        else if(rst == 0)
            begin
                case({RD,WR})
                2'b00 : begin
                end 
                2'b01 : begin
                regFile[sel_i1] = Ip1;
                end 
                2'b10: begin
                op1 = regFile[sel_o1];
                op2  = regFile[sel_o2];
                end 
                2'b11: begin
                op1 = regFile[sel_o1];
                op2  = regFile[sel_o2];
                regFile[sel_i1] = Ip1;
                end    
                endcase
            end 
       end
      end
    endmodule
