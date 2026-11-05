module decoder3_8tb;
reg [2:0]d;
wire [7:0]y;
integer m;
decoder3_8 dut(d,y);
initial begin
	for(m=0;m<8;m=m+1)
	begin
		d=m;
		#10;
	end
end
initial 
$monitor("d=%b,y=%b",d,y);
endmodule
