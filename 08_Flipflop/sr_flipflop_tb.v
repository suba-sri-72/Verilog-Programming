module sr_flipflop_tb;
reg s,r,clk,rst;
wire q,qbar;
sr_flipflop dut(s,r,clk,rst,q,qbar);
always #5 clk = ~clk;
initial
	{s,r,clk,rst}=0;
initial begin
	rst=1;
	#5 rst=0;
	s=0;r=0;
	#10 s=0;r=1;
	#10 s=0;r=1;
	#10 s=1;r=0;
	#10 s=1;r=1;
end
initial
	$monitor("s=%b r=%b rst=%b q=%b qbar=%b",s,r,rst,q,qbar);
initial 
	#300 $finish;
endmodule
