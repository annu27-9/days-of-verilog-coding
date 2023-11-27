`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 12:37:47
// Design Name: 
// Module Name: square_wave
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


module square_wave( clk,rst_n,sq_wave);
input clk;
input rst_n;
output sq_wave;
	parameter CLOCK_FREQUENCY = 10000000;
	integer count = 0;
	reg sq = 0;
 always @(posedge clk) begin
		if (rst_n) begin
			count <= 8'h00;
			sq	 <= 1'b0;
		end
		else begin 
			if (count == 8'h00) begin
				sq <= ~sq;
				count <= CLOCK_FREQUENCY/2 - 1;  
			end 
			else 
				count <= count - 1; 
			end
		end
		assign sq_wave = sq;
endmodule
