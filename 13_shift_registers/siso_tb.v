module siso_tb;
reg clk,rst,enb,s_in;
wire s_out;
siso dut(clk,rst,enb,s_in,s_out);
always #5 clk=~clk;
initial 
	{clk,rst,enb}=0;
initial begin
	rst=1;
	#10 rst=0;
	enb=0;
	#10 enb=1;
	s_in=1'b1;
	#10 s_in=1'b1;
	#10 s_in=1'b1;
	#10 s_in=1'b0;
end
initial 
	$monitor("s_in=%b s_out=%b",s_in,s_out);
initial 
	#500 $finish;
endmodule
