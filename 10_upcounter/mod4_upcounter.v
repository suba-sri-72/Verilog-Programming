module mod4_upcounter(input clk,rst,enb,output reg [1:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(enb)
		count<=count+1;
	else if(enb==0)
		count<=count;
end
endmodule
