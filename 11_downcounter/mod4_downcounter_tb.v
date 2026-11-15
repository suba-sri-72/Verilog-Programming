module mod4_downcounter_tb;
reg clk,rst,enb;
wire [1:0]count;
mod4_downcounter dut(clk,rst,enb,count);
always #5 clk=~clk;
initial $monitor("count=%d",count);
initial 
	{clk,rst,enb}=0;
initial begin
	rst=1;
	#10 rst=0;
	enb=1;
	#100 enb=0;
	#300 $finish;
end
endmodule