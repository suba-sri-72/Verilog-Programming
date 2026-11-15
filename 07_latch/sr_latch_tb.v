module sr_latch_tb;
reg s,r,enb,rst;
wire q,qbar;
sr_latch dut(s,r,enb,rst,q,qbar);
always #5 enb = ~enb;
initial 
	{s,r,enb,rst}=0;

initial begin
	rst=1;
	#10 rst=0;
	#10 s=0;r=0;
	#10 s=0;r=1;
	#10 s=1;r=0;
	#10 s=1;r=1;
end
initial $monitor("s=%b r=%b q=%b qbar=%b",s,r,q,qbar);
initial 
	#300 $finish;

endmodule
