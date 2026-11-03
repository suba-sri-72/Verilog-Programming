module demux1_2(input in,s,output reg [1:0]y);
always@(*)begin
	if(s==0)begin
		y[0]=in;
		y[1]=0;
	end
	else
	begin
		y[0]=0;
		y[1]=in;
	end
end
endmodule