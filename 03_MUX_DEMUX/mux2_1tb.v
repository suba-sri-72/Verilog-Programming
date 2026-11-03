module mux2_1tb;
reg[1:0]i;
reg s;
wire y;
//integer m;
mux2_1 dut(i,s,y);
initial begin
	
	#10 s=0;i=2'b00;
	#10 s=0;i=2'b01;
	#10 s=0;i=2'b10;
	#10 s=0;i=2'b11;
	#10 s=1;i=2'b00;
	#10 s=1;i=2'b01;
	#10 s=1;i=2'b10;
	#10 s=1;i=2'b11;
	#10;
end
initial begin
	$monitor("i=%b s=%b y=%b",i,s,y);
end
endmodule

