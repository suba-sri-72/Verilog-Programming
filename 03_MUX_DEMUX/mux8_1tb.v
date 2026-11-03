module mux8_1tb;
reg[7:0]i;
reg[2:0]s;
wire y;
integer m;
mux8_1 dut(i,s,y);
initial begin
	for(m=0;m<2048;m=m+1)
	begin
		{i,s}=m;
		#10;
	end
end
initial begin
	$monitor("i=%b s=%b y=%b",i,s,y);
end
endmodule
