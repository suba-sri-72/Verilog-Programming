module parity_checker(input [4:0]received_data, input mode,output reg error);
always@(*)begin
	if(mode==0)
		error=^received_data;
	else
		error=~(^received_data);
end
endmodule