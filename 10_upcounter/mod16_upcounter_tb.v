module mod16_upcounter_tb;
reg clk,rst,enb;
wire [3:0]count;
mod16_upcounter dut(clk,rst,enb,count);
always #5 clk=~clk;
initial $monitor("count=%d",count);
initial 
	{clk,rst,enb}=0;
initial begin
	rst=1;
	#10 rst=0;
	enb=1;
	#500 enb=0;
	#1000 $finish;
end
endmodule