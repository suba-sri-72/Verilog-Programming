module bcd_gray_tb;
reg [3:0]b;
wire [3:0]g;
integer i;
bcd_gray dut(b,g);
initial begin
	for(i=0;i<10;i=i+1)begin
		b=i;
		#5;
	end
end
initial begin
	$monitor("bcd=%d gray=%b",b,g);
end

endmodule
