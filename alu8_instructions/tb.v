`timescale 1ns/1ns
module tb;

reg [4:0]a;
reg [4:0]b;
reg [2:0]opcode;
wire [9:0]result;

integer i;
alu8inst ins1(a,b,opcode,result);

initial begin

$monitor("a=%b b=%b opcode=%b result=%b",a,b,opcode,result);
for(i=0;i<8;i=i+1)
begin
a=$random;
b=$random;
opcode=i;
#10;
end
#10;

end

endmodule
