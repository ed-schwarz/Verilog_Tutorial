module Add32 (a, b, out, ci, cout);

	parameter width = 32;
	
	input ci;
	input [width-1:0] a;
	input [width-1:0] b;
	output cout;
	output [width-1:0] out;
	
	wire [width-1:0] sum33;
	assign sum33 = a + b + ci;
	assign out = sum33[width-1:0];
	assign cout = sum33[width];
	
endmodule