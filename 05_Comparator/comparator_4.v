module comparator_4(input [3:0]a,b,output reg equal,lessthan,greaterthan);
always@(*)begin
	equal=(a==b);
	lessthan=(a<b);
	greaterthan=(a>b);
end
endmodule