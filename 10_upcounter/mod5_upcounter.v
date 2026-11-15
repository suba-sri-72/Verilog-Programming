module mod5_upcounter(input clk,rst,output reg [2:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count<4)
		count<=count+1;
	else if(count==3'b100)
		count<=0;
end
endmodule
