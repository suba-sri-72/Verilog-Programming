module sipo_tb;
reg clk,rst,enb,sin;
wire [3:0]pout;
sipo dut (clk,rst,enb,sin,pout);
always #5 clk=~clk;
initial 
	{clk,rst,enb}=0;
initial begin
	rst=1;
	#10 rst=0;
	enb=0;
	sin=1'b1;
	#10 sin=1'b0;
	#10 sin=1'b1;
	#10 sin=1'b0;
	#10 enb=1;
end
initial 
	#300 $finish;
endmodule
