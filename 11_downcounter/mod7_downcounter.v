module mod7_downcounter(input clk,rst,output reg [2:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count==0)
		count<=3'b110;
	else
		count<=count-1;
end
endmodule
