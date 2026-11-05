module encoder4_2tb;
reg [3:0]d;
wire [1:0]y;
encoder4_2 dut(d,y);
initial begin
	#5 d=4'b0001;
	#5 d=4'b0010;
	#5 d=4'b0100;
	#5 d=4'b1000;

end
initial begin
	$monitor("d=%b y=%b",d,y);
end
endmodule
