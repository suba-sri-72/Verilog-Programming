module x_3(input [3:0]b,output reg [3:0]y);
always@(*)begin
	if(b<=9)
		y=b+4'b011;
	else
		y=4'b0000;
end
endmodule
