module bcdadder(input [3:0]a,b,input cin, output reg [3:0]sum,output reg cout);
reg [4:0]temp;
always@(*)begin
	{cout,sum}=a+b+cin;
	temp={cout,sum};
	if(temp>9)
		temp=temp+4'b00110;
	sum=temp[3:0];
	cout=temp[4];
end
endmodule
