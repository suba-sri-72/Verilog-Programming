//bcd x+3
module x_3_tb;
reg [3:0]b;
wire [3:0]y;
integer i;
x_3 dut(b,y);
initial begin
	for(i=0;i<10;i=i+1)begin
		b=i;
		#5;
	end
end
initial begin
	$monitor("bcd=%d x_3=%b",b,y);
end
endmodule
