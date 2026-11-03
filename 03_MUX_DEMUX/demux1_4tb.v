module demux1_4tb;
reg in;
reg [1:0]s;
wire [3:0]y;
integer m;
demux1_4 dut(in,s,y);
initial begin
	for(m=0;m<8;m=m+1)
	begin
		{in,s}=m;
		#10;
	end
end
initial begin
	$monitor("in=%b s=%b y=%b",in,s,y);
end
endmodule
