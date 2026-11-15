module d_flipflop_tb;
reg  d,clk,rst;
wire q,qbar;
d_flipflop dut(d,clk,rst,q,qbar);
always #5 clk = ~clk;
initial 
	{d,clk,rst}=0;
initial begin
	rst=1;
	#5 rst=0;
	d=0;
	#10 d=1;
end
initial $monitor("d=%b q=%b qbar=%b",d,q,qbar);
initial 
	#100 $finish;
endmodule
