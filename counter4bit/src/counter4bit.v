module counter4bit(input clk,
		   input rst,
		   output reg count
		  );

always@(posedge clk)
if(rst)
count<=0;
else
count<=count+1'b1;
endmodule
