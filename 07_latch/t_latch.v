//synchronous rst

/*
module t_latch(input t,enb,rst,output reg q,qbar);

always @(enb) begin
    if(rst) begin
        q <= 0;
        qbar <= 1;
    end
    else if(enb && t) begin
        q <= ~q;
        qbar <= ~qbar;
    end
    else if(enb && !t) begin
        q <= q;
        qbar <= qbar;
    end
end

endmodule
*/

//asynchronous rst

module t_latch(input t,enb,rst,output reg q,qbar);
always@(enb,rst)begin
	if(rst)begin
		q<=0;
		qbar<=1;
	end
	else if(enb && t) begin
        q <= ~q;
        qbar <= ~qbar;
    end
    else if(enb && !t) begin
        q <= q;
        qbar <= qbar;
    end
end
endmodule

