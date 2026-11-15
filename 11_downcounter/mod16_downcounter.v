module mod16_downcounter(input clk,rst,enb,output reg [3:0]count);
always@(posedge clk)begin
	if(rst)
		count=4'b1111;
	else if(enb)
		count<=count-1;
	else if(enb==0)
		count<=count;
end
endmodule
