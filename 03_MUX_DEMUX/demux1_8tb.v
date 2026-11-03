module demux1_8tb;
reg in;
reg [2:0]s;
wire [7:0]y;
integer m;
demux1_8 dut(in,s,y);
initial begin
	for(m=0;m<16;m=m+1)
	begin
		{in,s}=m;
		#10;
	end
end
initial begin
	$monitor("in=%b s=%b y=%b",in,s,y);
end
endmodule
