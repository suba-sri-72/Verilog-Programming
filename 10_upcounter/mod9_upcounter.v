module mod9_upcounter(input clk,rst,output reg [3:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count<8)
		count<=count+1;
	else if(count==4'b1000)
		count<=0;
end
endmodule
