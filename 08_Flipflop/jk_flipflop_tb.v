module jk_flipflop_tb;
reg j,k,clk,rst;
wire q,qbar;
jk_flipflop dut(j,k,clk,rst,q,qbar);
always #5 clk=~clk;
initial 
	{j,k,clk,rst}=0;
initial begin
	rst=1;
	#5 rst=0;
	j=0;k=0;
	#10 j=0;k=1;
	#10 j=1;k=0;
	#10 j=1;k=1;
end
initial $monitor("j=%b k=%b q=%b qbar=%b",j,k,q,qbar);

initial 
	#300 $finish;
endmodule
