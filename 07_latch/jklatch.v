//asynchronous rst
/*
module jklatch(input j,k,enb,rst,output reg q,qbar);
always@(enb,rst)begin
	if(rst)begin
		q<=0;
		qbar<=1;
	end
	else if(enb)begin
		if(j==0&&k==0)begin
			q<=q;
			qbar<=qbar;
		end
		else if(j==0&&k==1)begin
			q<=0;
			qbar<=1;
		end
		else if(j==1&&k==0)begin
			q<=1;
			qbar<=0;
		end
		else if(j==1&&k==1)begin
			q<=~q;
			qbar<=~qbar;
		end
	end
end
endmodule

*/

//synchronous rst

module jklatch(input j,k,enb,rst,output reg q,qbar);
always@(enb)begin
	if(rst)begin
		q<=0;
		qbar<=1;
	end
	else if(j==0&&k==0)begin
		q<=q;
		qbar<=qbar;
	end
	else if(j==0&&k==1)begin
		q<=0;
	        qbar<=1;
	end
	else if(j==1&&k==0)begin
		q<=1;
		qbar<=0;
	end
	else if(j==1&&k==1)begin
		q<=~q;
		qbar<=~qbar;
	end
end
endmodule

