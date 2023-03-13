module add32_tb;
	parameter width = 32;
	reg clk;
	reg cin;
	reg [width-1:0] a;
	reg [width-1:0] b;
	wire cout;
	wire [width-1:0] out;
Add32 DUT (.a(a), .b(b), .out(out), .ci(cin), .cout(cout));
initial begin
	$dumpfile("add32.vcd");
	$dumpvars(0, add32_tb);
	#10;
	a = 0;
	b = 0;
	cin = 0;
	clk = 0;
	#10;
end
always @(posedge clk)
begin	
	#50;
	#10 a = 32'b11111111110000000000111111111100; //4290777084
	#10 b = 32'b11111111111111111111000000000011; //4294963203
end
always # 10 clk=~clk;
always @(a or b)
#50 $display($time, "clk=%b, a=%b, b=%b, cin=%b", $time, clk, a, b, cin);
initial
#100 $finish;
endmodule 