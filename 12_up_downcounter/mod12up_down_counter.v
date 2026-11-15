module mod12up_down_counter(input clk,rst,mode,output reg [3:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(mode)begin
		if(count==4'b1011)
			count<=0;
		else
			count<=count+1;
	end
	else if(mode==0)begin
		if(count==0)
			count<=4'b1011;
		else
			count<=count-1;
	end
end
endmodule
