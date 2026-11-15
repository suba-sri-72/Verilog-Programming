//1100 mealy overlapping

module fsm_mealy1(input clk,rst,x,output y);
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0]ps,ns;
always@(posedge clk)begin
	if(rst)
		ps<=0;
	else
		ps<=ns;
end
always@(*)begin
	case(ps)
		s0: begin
			if(x)
				ns=s1;
			else
				ns=s0;
		end
		s1: begin
			if(x)
				ns=s2;
			else
				ns=s0;
		end
		s2: begin
			if(x)
				ns=s2;
			else 
				ns=s3;
			end
		s3: begin
			if(x)
				ns=s1;
			else
				ns=s0;
		end
	endcase
end
assign y=(ps==s3)&&(x==0);
endmodule

