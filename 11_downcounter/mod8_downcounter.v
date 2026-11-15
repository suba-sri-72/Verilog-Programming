module mod8_downcounter(input clk,rst,enb,output reg [2:0]count);
always@(posedge clk)begin
	if(rst)
		count=3'b111;
	else if(enb)
		count<=count-1;
	else if(enb==0)
		count<=count;
end
endmodule