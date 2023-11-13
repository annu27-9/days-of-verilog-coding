module ALU (opcode,operand1,operand2,result,flagC,flagZ);
input [2:0]opcode;
input[7:0]operand1,operand2;
output reg[15:0]result=16'b0;
output reg flagC = 1'b0,flagZ=1'b0;
parameter[2:0]ADD =3'b000,
SUB = 3'b001,
MUL =  3'b010,
AND =  3'b011,
OR =  3'b100,
NAND =  3'b101,
NOR =  3'b110,
XOR =  3'b111;
always@(opcode,operand1,operand2)
begin
case(opcode)
ADD:begin
result = operand1+operand2;
flagC = result[8];
flagZ = (result == 16'b0);
end
SUB:begin
result = operand1 - operand2;
flagC = result[8];
flagZ = (result == 16'b0);
end

MUL: begin
result = operand1*operand2;
flagZ = (result == 16'b0);
end

AND: begin
result = operand1&operand2;
flagZ = (result == 16'b0);
end

OR: begin
result = operand1|operand2;
flagZ = (result == 16'b0);
end
NAND: begin
result = ~(operand1&operand2);
flagZ = (result == 16'b0);
end
NOR: begin
result = ~(operand1|operand2);
flagZ = (result == 16'b0);
end
XOR: begin
result = operand1^operand2;
flagZ = (result == 16'b0);
end 
default:begin
result = 16'b0;
flagC = 1'b0;
flagZ = 1'b0;
end
endcase
end
endmodule
