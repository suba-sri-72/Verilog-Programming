
module piso_tb;
reg clk,rst,load;
reg [3:0]pin;
wire sout;
piso dut(clk,rst,load,pin,sout);
always #5 clk=~clk;
initial 
	{clk,rst,load}=0;
initial begin
	rst=1;
	#10 rst=0;
	load=1;
	#10 pin=4'b1111;
	#10 load=0;
end
initial 
	#300 $finish;
endmodule
