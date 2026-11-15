module master_slave_jk(input clk,rst,j,k,output reg q,qbar);
reg qm,qmbar;
always@(posedge clk)begin
	if(rst)begin
		qm<=0;
		qmbar<=1;
	end
	else if(j==0 && k==0)begin
		qm<=qm;
		qmbar<=qmbar;
	end
	else if(j==0 && k==1)begin
		qm<=0;
		qmbar<=1;
	end
	else if(j==1 && k==0)begin
		qm<=1;
		qmbar<=0;
	end
	else if(j==1 && k==1)begin
		qm<=~qm;
		qmbar<=~qmbar;
	end
end
always@(negedge clk)begin
	if(rst)begin
		q=0;
		qbar=1;
	end
	else begin
		q=qm;
		qbar=qmbar;
	end
end
endmodule
