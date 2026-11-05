module comparator_4tb;
reg [3:0]a,b;
wire equal,lessthan,greaterthan;
integer i;
comparator_4 dut(a,b,equal,lessthan,greaterthan);
initial begin
	$monitor("a=%b b=%b equal=%b lessthan=%b greaterthan=%b",a,b,equal,greaterthan,lessthan);
	for(i=0;i<256;i=i+1)begin
		{a,b}=i;
		#10;
	end
end
endmodule