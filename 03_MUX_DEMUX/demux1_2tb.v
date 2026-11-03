module demux1_2tb;
reg in,s;
wire [1:0]y;
integer m;
demux1_2 dut(in,s,y);
initial begin
	for(m=0;m<4;m=m+1)
	begin
		{in,s}=m;
		#10;
	end
end
initial begin
	$monitor("in=%b s=%b y[0]=%b y[1]=%b",in,s,y[0],y[1]);
end
endmodule