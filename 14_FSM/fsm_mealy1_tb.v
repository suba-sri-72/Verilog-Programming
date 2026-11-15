module fsm_mealy1_tb;
reg clk,rst,x;
wire y;
fsm_mealy1 dut(clk,rst,x,y);
always #5 clk=~clk;
initial begin
	{clk,rst,x}=0;
	rst=1;
	#10 rst=0;
	#5 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=0;
	#10 x=1;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	#300 $finish;
end
initial $monitor("time=%t x=%b y=%b",$time, x,y);
endmodule
