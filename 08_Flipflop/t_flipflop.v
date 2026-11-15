module t_flipflop(input t,clk,rst,output reg q,qbar);
always@(posedge clk)begin
	if(rst)begin
		q<=0;
		qbar<=1;
	end
	else 
	begin
		q<=~t;
		qbar<=t;
	end
end
endmodule
