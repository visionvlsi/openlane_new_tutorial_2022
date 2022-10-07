module alu8inst(
		input [4:0]a,
		input [4:0]b,
		input [2:0]opcode, //add=3'b000, sub=3'b001, mul=3'b010
		                   //and=3'b011, xor=3'b100, or=3'b101
		                   //mul_a_by_2=3'b110, divide_a_by_2=3'b111
		output reg [9:0]result
		);
		
task add(input [4:0]a,
         input [4:0]b,
	 //input [2:0]opcode,
	 output [5:0]sum
	 );
sum=a+b;
endtask

task sub(input [4:0]a,
         input [4:0]b,
	 //input [2:0]opcode,
	 output [5:0]diff
	 );
diff=a-b;
endtask

task mult(input [4:0]a,
          input [4:0]b,
	 //input [2:0]opcode,
	 output [9:0]mul
	 );
mul=a*b;
endtask

task and_op1(input [4:0]a,
             input [4:0]b,
	   //  input [2:0]opcode,
	     output [4:0]and_op
	     );

and_op=a & b;
endtask


task xor_op1(input [4:0]a,
             input [4:0]b,
	     //input [2:0]opcode,
	     output [4:0]xor_op
	     );
xor_op=a ^ b;
endtask


task or_op1(input [4:0]a,
            input [4:0]b,
	    //input [2:0]opcode,
	    output [4:0]or_op
	     );
or_op=a|b;
endtask

task mulby2(input [4:0]a,
            //input [4:0]b,
	    //input [2:0]opcode,
	    output [5:0]mul_a_by_2
	         );

mul_a_by_2=a*2;
endtask


task divby2(input [4:0]a,
            //input [4:0]b,
	    //input [2:0]opcode,
	    output [3:0]divide_a_by_2
	    );
divide_a_by_2=a/2;

endtask		
		
always@(*)
                 case(opcode)
	         3'b000: begin add(a,b,result[5:0]); result[9:6]=4'b0;  end
	         3'b001: begin sub(a,b,result[5:0]); result[9:6]=4'b0;  end
	         3'b010: begin mult(a,b,result); end
	         3'b011: begin and_op1(a,b,result[5:0]); result[9:6]=4'b0; end
	         3'b100: begin xor_op1(a,b,result[5:0]); result[9:6]=4'b0; end
	         3'b101: begin or_op1(a,b,result[5:0]);  result[9:6]=4'b0; end
	         3'b110: begin mulby2(a,result[5:0]); result[9:6]=4'b0;  end
	         3'b111: begin divby2(a,result[3:0]); result[9:4]=4'b0; end	         
	         endcase
	         
endmodule	         
