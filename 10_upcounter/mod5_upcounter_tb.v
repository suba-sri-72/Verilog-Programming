module mod5_upcounter_tb;
reg clk,rst;
wire [2:0]count;
mod5_upcounter dut(clk,rst,count);
always #5 clk=~clk;
initial $monitor("count=%d",count);
initial begin
	{clk,rst}=0;
	rst=1;
	#10 rst=0;
	#500 $finish;
end
endmodule
