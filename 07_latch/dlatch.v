//asynchronous rst

module dlatch(input d,enb,rst,output reg q,qbar);
always@(enb,rst)
		if(rst)begin
			q<=0;
			qbar<=1;
		end
		else if(enb)
		begin
			q<=d;
			qbar<=~d;
		end


endmodule
/*

//synchronous rst
module dlatch(input d,enb,rst,output reg q,qbar);
always@(enb)begin
	if(rst)begin
		q<=0;
		qbar<=1;
	end
	else
	begin
		q<=d;
		qbar<=~d;
	end
end
endmodule
*/
