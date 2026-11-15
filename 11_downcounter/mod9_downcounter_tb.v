module mod9_downcounter_tb;
reg clk,rst;
wire [3:0]count;
mod9_downcounter dut(clk,rst,count);
always #5 clk=~clk;
initial $monitor("count=%d",count);
initial begin
	{clk,rst}=0;
	rst=1;
	#10 rst=0;
	#500 $finish;
end
endmodule