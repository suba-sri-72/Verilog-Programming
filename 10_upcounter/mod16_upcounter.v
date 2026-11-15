module mod16_upcounter(input clk,rst,enb,output reg [3:0]count);
always@(posedge clk)begin
	if(rst)
		count=4'b0000;
	else if(enb)
		count<=count+1;
	else if(enb==0)
		count<=count;
end
endmodule
