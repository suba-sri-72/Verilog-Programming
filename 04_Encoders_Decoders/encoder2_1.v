module encoder2_1(input [1:0]d,output reg y);
always@(*)begin
	case(d)
		2'd01:y=1'b0;
		2'd10:y=1'b1;
	endcase
end
endmodule
