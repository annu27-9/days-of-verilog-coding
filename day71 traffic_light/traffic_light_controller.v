`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 13:33:16
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_control(north,south,east,west,clk,rst);

   output reg [2:0] north,south,east,west; 
   input      clk;
   input      rst;
 
   reg [2:0] state;
 
   parameter [2:0] north_gr=3'b000; // north traff_light shows green
   parameter [2:0] north_ye=3'b001;// north traff_light shows yellow
   parameter [2:0] south_gr=3'b010;// south traff_light shows green
   parameter [2:0] south_ye=3'b011;// south traff_light shows yellow
   parameter [2:0] east_gr=3'b100;// east traff_light shows green
   parameter [2:0] east_ye=3'b101;// east traff_light shows yellow
   parameter [2:0] west_gr=3'b110;// west traff_light shows green
   parameter [2:0] west_ye=3'b111;// west traff_light shows yellow

   reg [2:0] count;
 

   always @(posedge clk, posedge rst)
     begin
        if (rst)
            begin
                state=north_gr;
                count =3'b000;
            end
        else
            begin
                case (state)
                north_gr :
                    begin
                        if (count==3'b111)
                            begin
                            count=3'b000;
                            state=north_ye;
                            end
                        else
                            begin
                            count=count+3'b001;
                            state=north_gr;
                            end
                    end

                north_ye :
                    begin
                        if (count==3'b011)
                            begin
                            count=3'b000;
                            state=south_gr;
                            end
                        else
                            begin
                            count=count+3'b001;
                            state=north_ye;
                        end
                    end

               south_gr :
                    begin
                        if (count==3'b111)
                            begin
                            count=3'b0;
                            state=south_ye;
                            end
                        else
                            begin
                            count=count+3'b001;
                            state=south_gr;
                        end
                    end

            south_ye :
                begin
                    if (count==3'b011)
                        begin
                        count=3'b0;
                        state=east_gr;
                        end
                    else
                        begin
                        count=count+3'b001;
                        state=south_ye;
                        end
                    end

            east_gr :
                begin
                    if (count==3'b111)
                        begin
                        count=3'b0;
                        state=east_ye;
                        end
                    else
                        begin
                        count=count+3'b001;
                        state=east_gr;
                        end
                    end

            east_ye :
                begin
                    if (count==3'b011)
                        begin
                        count=3'b0;
                        state=west_gr;
                        end
                    else
                        begin
                        count=count+3'b001;
                        state=east_ye;
                        end
                    end

            west_gr :
                begin
                    if (count==3'b111)
                        begin
                        state=west_ye;
                        count=3'b0;
                        end
                    else
                        begin
                        count=count+3'b001;
                        state=west_gr;
                        end
                    end

            west_ye :
                begin
                    if (count==3'b011)
                        begin
                        state=north_gr;
                        count=3'b0;
                        end
                    else
                        begin
                        count=count+3'b001;
                        state=west_ye;
                        end
                    end
            endcase 
        end 
    end 


always @(state)
     begin
         case (state)
            north_gr :
                begin
                    north = 3'b001;
                    south = 3'b100;
                    east = 3'b100;
                    west = 3'b100;
                end // case: north_gr

            north_ye :
                begin
                    north = 3'b010;
                    south = 3'b100;
                    east = 3'b100;
                    west = 3'b100;
                end // case: north_ye

            south_gr :
                begin
                    north = 3'b100;
                    south = 3'b001;
                    east = 3'b100;
                    west = 3'b100;
                end // case: south_gr

            south_ye :
                begin
                    north = 3'b100;
                    south = 3'b010;
                    east = 3'b100;
                    west = 3'b100;
                end // case: south_ye

            west_gr :
                begin
                    north = 3'b100;
                    south = 3'b100;
                    east = 3'b100;
                    west = 3'b001;
                end // case: west_gr

            west_ye :
                begin
                    north = 3'b100;
                    south = 3'b100;
                    east = 3'b100;
                    west = 3'b010;
                end // case: west_ye

            east_gr :
                begin
                    north = 3'b100;
                    south = 3'b100;
                    east = 3'b001;
                    west = 3'b100;
                end // case: east_gr

            east_ye :
                begin
                    north = 3'b100;
                    south = 3'b100;
                    east = 3'b010;
                    west = 3'b100;
                end // case: east_ye
            endcase 
     end 
endmodule
