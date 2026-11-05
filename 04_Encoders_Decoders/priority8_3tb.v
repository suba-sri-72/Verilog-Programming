module priority8_3tb;
reg [7:0]d;
wire [3:0]y;
integer m;
priority8_3 dut(d,y);
initial begin
	for(m=0;m<256;m=m+1)
	begin
		d=m;
		#10;
	end
end
endmodule
