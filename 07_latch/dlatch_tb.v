module dlatch_tb;
reg d,enb,rst;
wire q,qbar;
dlatch dut(d,enb,rst,q,qbar);
always #5 enb=~enb;
initial 
	{d,enb,rst}=0;
initial begin
	rst=1;
	#10 rst=0;
	d=0;
	#10 d=1;
end
initial $monitor("d=%b q=%b qbar=%b",d,q,qbar);
initial begin
	#500 $finish;
end

endmodule
