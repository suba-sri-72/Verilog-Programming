module mod3_upcounter_tb;
reg clk,rst;
wire [1:0]count;
mod3_upcounter dut(clk,rst,count);
always #5 clk=~clk;
initial $monitor("count=%d",count);
initial 
	{clk,rst}=0;
initial begin
	rst=1;
	#10 rst=0;
	#500 $finish;
end
endmodule