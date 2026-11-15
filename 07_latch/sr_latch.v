//synchronous reset
/*
module sr_latch(input s,r,enb,rst, output reg q,qbar);
always@(enb)begin
	if(enb)
		if(rst)begin
			q<=0;
			qbar<=1;
		end
		else if(s==0&&r==0)begin
			q<=q;
			qbar<=qbar;
		end
		else if(s==0&&r==1)begin
			q<=0;
			qbar<=1;
		end
		else if(s==1&&r==0)begin
			q<=1;
			qbar<=0;
		end
		else
		begin
			q<=1'bx;
			qbar<=1'bx;
		end
	end
endmodule
*/
//asynchronous reset

module sr_latch(input s,r,enb,rst, output reg q,qbar);

always @(enb,rst)
begin
    if(rst) begin
        q <= 1'b0;
        qbar <= 1'b1;
    end
    else if(enb) begin
        if(s==0 && r==0) begin
            q <= q;
            qbar <= qbar;
        end
        else if(s==0 && r==1) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end
        else if(s==1 && r==0) begin
            q <= 1'b1;
            qbar <= 1'b0;
        end
        else begin
            q <= 1'bx;
            qbar <= 1'bx;
        end
    end
end

endmodule


