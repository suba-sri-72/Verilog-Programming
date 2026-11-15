module mod12up_down_counter_tb;
reg clk,rst,mode;
wire [3:0]count;
mod12_up_down_counter dut(clk,rst,mode,count);
always #5 clk=~clk;
initial $monitor("mode=%b conut=%d",mode,count);
initial 
	{clk,rst,mode}=0;
initial begin
	rst=1;
	#10 rst=0;
	mode=1;
	#200 mode=0;
	#500 $finish;
end
endmodule