module priority16_4tb;
reg [15:0]d;
wire [3:0]y;
integer m;
priority16_4 dut(d,y);
initial begin
	for(m=0;m<65536;m=m+1)
	begin
		d=m;
		#10;
	end
end
initial 
	$monitor("d=%b y=%b",d,y);
endmodule
