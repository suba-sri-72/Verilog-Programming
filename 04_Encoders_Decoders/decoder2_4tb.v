module decoder2_4tb;
reg [1:0]d;
wire [3:0]y;
decoder2_4 dut(d,y);
initial begin
	#5 d=2'b00;
	#5 d=2'b01;
	#5 d=2'b10;
	#5 d=2'b11;
        #5;
end
initial
$monitor("d=%b y=%b",d,y);

endmodule
