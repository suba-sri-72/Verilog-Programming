module add_sub_fa_tb;
reg cin;
reg [3:0]a,b;
wire [3:0]s;
wire cout;
add_sub dut(a,b,cin,s,cout);
initial begin
	//add
	a=4'b1010;
	b=4'b0011;
	cin=0;
	#10;
	$display("ADD: a=%b b=%b cin=%b s=%b cout=%b",a,b,cin,s,cout);

	//sub
	a=4'b1010;
	b=4'b0011;
	cin=1;
	#10;
	$display("SUB: a=%b b=%b cin=%b s=%b cout=%b",a,b,cin,s,cout);
	
end
endmodule

