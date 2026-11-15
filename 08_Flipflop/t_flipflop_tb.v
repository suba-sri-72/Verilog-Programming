module t_flipflop_tb;
reg t,clk,rst;
wire q,qbar;
t_flipflop dut(t,clk,rst,q,qbar);
always #5 clk=~clk;
initial 
	{t,clk,rst}=0;
initial begin
	rst=1;
	#5 rst=0;
	t=0;
	#10 t=1;
end
initial $monitor("t=%b q=%b qbar=%b",t,q,qbar);
initial 
	#300 $finish;
endmodule
