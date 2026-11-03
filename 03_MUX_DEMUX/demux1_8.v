module demux1_8(input in,input [2:0]s,output reg [7:0]y);
always@(*)begin
	y=8'b0000_0000;
	if(s==0)
		y[0]=in;
	else if(s==1)
		y[1]=in;
	else if(s==2)
		y[2]=in;
	else if(s==3)
		y[3]=in;
	else if(s==4)
		y[4]=in;
	else if(s==5)
		y[5]=in;
	else if(s==6)
		y[6]=in;
	else
		y[7]=in;
end
endmodule
