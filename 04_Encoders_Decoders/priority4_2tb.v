module priority4_2tb;
reg [3:0]d;
wire [1:0]y;
integer m;
priority4_2 dut(d,y);
initial begin
	for(m=0;m<16;m=m+1)
	begin
		d=m;
		#10;
	end
end
endmodule

