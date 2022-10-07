module encoder8x3( input [7:0]i,
		   output reg [2:0]y
			);
			
always@(*)

case(i)
8'b0000_0001:y=3'b000;
8'b0000_0010:y=3'b001;
8'b0000_0100:y=3'b010;
8'b0000_1000:y=3'b011;
8'b0001_0000:y=3'b100;
8'b0010_0000:y=3'b101;
8'b0100_0000:y=3'b110;
8'b1000_0000:y=3'b111;
default: y=3'b000;
endcase

endmodule
