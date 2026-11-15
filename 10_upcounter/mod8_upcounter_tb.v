module mod8_upcounter_tb;
reg clk,rst,enb;
wire [2:0]count;
mod8_upcounter dut(clk,rst,enb,count);
always #5 clk=~clk;
initial $monitor("count=%d",count);
initial 
	{clk,rst,enb}=0;
initial begin
	rst=1;
	#10 rst=0;
	enb=1;
	#200 enb=0;
	#500 $finish;
end
endmodule
