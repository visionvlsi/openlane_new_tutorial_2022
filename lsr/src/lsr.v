module lsr(input clk,
	   input rst,
	   input in,
	   output out);

reg [3:0]q;

always@(posedge clk)

begin
if(rst)
q<=4'b0000;
else
begin
q<={q[2:0],in};
end
end
assign out=q[3];

endmodule
