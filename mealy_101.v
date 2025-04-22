module mealy_101 (x,clk,rst,y);
input x,clk,rst;
output reg y;

reg [1:0]state,next_state;

parameter s0 = 2'b00 , 
          s1 = 2'b01,
          s2 = 2'b10;
          
 //state logic
always @(posedge clk) begin
   if(rst)
        state <= s0;
   else
        state <= next_state;
 end
 
 //next_state 
 always@(state,x) begin
 case(state)
 s0: begin 
        if(x) begin 
        next_state <= s1;
        y<=0;
        end
        else begin
        next_state <= s0;
        y <= 0;
        end
        end
        
        
s1: begin 
        if(x) begin 
        next_state <= s1;
        y<=0;
        end
        else begin
        next_state <= s2;
        y <= 0;
        end
        end
        
        
s2: begin 
        if(x) begin 
        next_state <= s1;
        y<=1;
        end
        else begin
        next_state <= s0;
        y<= 0;
        end
        end
        
endcase
end

endmodule       