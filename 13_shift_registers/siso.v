/*
//siso right shift
module siso(input clk,rst,enb,s_in,output reg s_out);
reg [3:0]temp;
always@(posedge clk)begin
	if(rst)
		temp<=4'b0000;
	else if(enb)begin
		temp <= temp>>1;
	//	temp<={s_in,temp[3:1]};
		temp[3] <= s_in;
		s_out <= temp[0];
	end
end
endmodule

*/
//left shift
module siso(input clk,rst,enb,sin,output reg sout);
reg [3:0]temp;
always@(posedge clk)begin
	if(rst)
		temp<=4'b0000;
	else if(enb)begin
		temp<=temp<<1;
		temp[0]<=sin;
		sout<=temp[3];
	end
end
endmodule

