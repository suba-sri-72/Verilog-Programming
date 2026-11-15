//right shift
/*
module sipo(input clk,rst,enb,sin,output reg [3:0]pout);
reg [3:0]temp;
always@(posedge clk)begin
	if(rst)
		temp<=0;
	else if(enb==0)begin
		temp<=temp>>1;
		temp[3]<=sin;
	end
	else if(enb==1)
		pout<=temp;
end
endmodule
*/
//left shift
//

module sipo(input clk,rst,enb,sin,output reg [3:0]pout);
reg [3:0]temp;
always@(posedge clk)begin
	if(rst)
		temp<=0;
	else if(enb==0)begin
	//	temp<=temp<<1;
	//	temp[0]<=sin;
		temp<={temp[2:0],sin};
	end
	else if(enb==1)
		pout<=temp;
end
endmodule

