module mod4_downcounter(input clk,rst,enb,output reg[1:0]count);
always@(posedge clk)begin
	if(rst)
		count<=2'b11;
	else if(enb)
		count<=count-1;
	else if(enb==0)
		count<=count;
end
endmodule;
