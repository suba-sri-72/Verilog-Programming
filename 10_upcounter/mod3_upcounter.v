module mod3_upcounter(input clk,rst,output reg [1:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count<2)
		count<=count+1;
	else if(count==2'b10)
		count<=0;
end
endmodule
