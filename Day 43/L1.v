`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 15:27:47
// Design Name: 
// Module Name: L1
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


//module L1(
//    input clk,
//    input areset,    // Freshly brainwashed Lemmings walk left.
//    input bump_left,
//    input bump_right,
//    output walk_left,
//    output walk_right);  

//    parameter LEFT=0, RIGHT=1;
//    reg state, next_state;

//    always @(*) begin
//        // State transition logic
//        case (state)
//            LEFT : next_state = bump_left ? RIGHT : LEFT;
//            RIGHT : next_state = bump_right ? LEFT : RIGHT ;
//        endcase
//    end

//    always @(posedge clk, posedge areset) begin
//        if(areset)
//            state<=LEFT;
//        else 
//            state<=next_state;
//    end
//    assign walk_left = (state == LEFT);
//    assign walk_right = (state == RIGHT);
//endmodule


//module L2(
//input clk,
//input areset,
//input bump_left,
//input bump_right,
//input ground,
//output walk_left,
//output walk_right,
//output aaah );
//parameter LEFT=0, RIGHT=1,FALLING_LEFT=2,FALLING_RIGHT=3;
//reg [1:0] state, next_state;
//always @(*) begin
//case(state)
//LEFT:           next_state=(~ground)   ?    FALLING_LEFT   : ((bump_left)?RIGHT:LEFT);
//RIGHT:          next_state=(~ground)   ?    FALLING_RIGHT  : ((bump_right )?LEFT:RIGHT);
//FALLING_LEFT:   next_state=(ground)    ?    LEFT           : FALLING_LEFT;
//FALLING_RIGHT:  next_state=(ground)    ?    RIGHT          : FALLING_RIGHT;
//endcase
//end
//always @(posedge clk, posedge areset) begin
//if(areset)
//state<=LEFT;
//else
//state<=next_state;
//end
//assign walk_left=(state==LEFT);
//assign walk_right=(state==RIGHT);
//assign aaah=(state==FALLING_LEFT || state==FALLING_RIGHT);
//endmodule
//module L3(
//input clk,input areset,input bump_left,input bump_right,input ground,input dig,
//output walk_left,
//output walk_right,
//output aaah,
//output digging );
//parameter LEFT=0,RIGHT=1,FALLING_LEFT=2,FALLING_RIGHT=3,DIGGING_LEFT=4,DIGGING_RIGHT=5;
//reg [2:0] state, next_state;
//always @(*) begin
//case(state)
//LEFT:           next_state=(~ground)   ?    FALLING_LEFT   : ((dig)?  DIGGING_LEFT:((bump_left)?RIGHT:LEFT));
//RIGHT:          next_state=(~ground)   ?    FALLING_RIGHT  : ((dig)?  DIGGING_RIGHT:((bump_right )?LEFT:RIGHT));
//FALLING_LEFT:   next_state=(ground)    ?    LEFT           : FALLING_LEFT;
//FALLING_RIGHT:  next_state=(ground)    ?    RIGHT          : FALLING_RIGHT;
//DIGGING_LEFT:   next_state=(ground)    ?    DIGGING_LEFT   : FALLING_LEFT;
//DIGGING_RIGHT:  next_state=(ground)    ?    DIGGING_RIGHT  : FALLING_RIGHT;
//endcase
//end
//always @(posedge clk, posedge areset) begin
//if(areset)
//state<=LEFT;
//else
//state<=next_state;
//end
//assign walk_left=(state==LEFT);
//assign walk_right=(state==RIGHT);
//assign aaah=(state==FALLING_LEFT || state==FALLING_RIGHT);
//assign digging=(state==DIGGING_LEFT || state==DIGGING_RIGHT);
//endmodule

module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 

    integer i;
    parameter LEFT=0, RIGHT=1, FLEFT = 2, FRIGHT = 3, DIGR=4, DIGL = 5, DEATH = 6;
    reg [2:0]state, next_state, olddir;

    always @(*) begin
        case(state)
            LEFT: next_state = ground ? (dig ? DIGL : (bump_left ? RIGHT : LEFT) ): FLEFT;
            RIGHT: next_state = ground ? (dig ? DIGR : (bump_right ? LEFT : RIGHT) ) : FRIGHT;
            FLEFT: next_state = ground ? (i > 19 ? DEATH : LEFT) : state;
            FRIGHT: next_state = ground ? (i > 19? DEATH : RIGHT): state;
            DIGR: next_state = ground ? DIGR : FRIGHT;
            DIGL: next_state = ground ? DIGL : FLEFT;
            DEATH: next_state = DEATH;
        endcase
    end

    always @ (posedge clk, posedge areset) begin
        if(areset)
            state = LEFT;
        else if(state == FLEFT || state == FRIGHT)begin
            i <= i+1;
            state <= next_state;
        end
        else begin
            state <= next_state;
        	i <= 0;
        end
        
    end
    
    assign walk_left = state == LEFT;
    assign walk_right = state == RIGHT;
    assign aaah = state == FRIGHT || state == FLEFT;
    assign digging = state == DIGR || state == DIGL;


endmodule