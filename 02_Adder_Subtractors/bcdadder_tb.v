module bcdadder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
bcdadder dut(a,b,cin,sum,cout);
initial begin
	//temp<9
	a=4'b0101;b=4'b0010;cin=0;
	#10;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
	a=4'b0010;b=4'b0010;cin=0;
	#10;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
	a=4'b1000;b=4'b1000;cin=0;
	#10;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
        a=4'b1001;b=4'b1001;cin=1;
	#10;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
	
end
endmodule
