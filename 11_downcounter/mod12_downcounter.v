module mod12_downcounter(input clk,rst,output reg [3:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count==0)
		count<=4'b1011;
	else
		count<=count-1;
end
endmodule
