module mod7_upcounter(input clk,rst,output reg [2:0]count);
always@(posedge clk)begin
	if(rst)
		count<=0;
	else if(count<6)
		count<=count+1;
	else if(count==3'b110)
		count<=0;
end
endmodule
