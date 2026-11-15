module master_slave_jk_tb;
reg clk,rst,j,k;
wire q,qbar;
master_slave_jk dut(clk,rst,j,k,q,qbar);
always #5 clk=~clk;
initial $monitor("j=%b k=%b q=%b qbar=%b",j,k,q,qbar);
initial
	{clk,rst,j,k}=0;
initial begin
	rst=1;
	#10 rst=0;
	j=0;k=0;
	#10 j=0;k=1;
	#10 j=1;k=0;
	#10 j=1;k=1;
	#300 $finish;
end
endmodule
