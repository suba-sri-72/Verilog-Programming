module mod3_downcounter(input clk,rst,output reg[1:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count==2'b00)
		count<=2'b10;
	else
		count<=count-1;
end
endmodule
