module priority16_4(input [15:0]d,output reg [3:0]y);
always@(*)begin
	casex(d)
		16'b0000_0000_0000_0001:y=4'b0000;
		16'b0000_0000_0000_001x:y=4'b0001;
		16'b0000_0000_0000_01xx:y=4'b0010;
		16'b0000_0000_0000_1xxx:y=4'b0011;
		16'b0000_0000_0001_xxxx:y=4'b0100;
		16'b0000_0000_001x_xxxx:y=4'b0101;
		16'b0000_0000_01xx_xxxx:y=4'b0110;
		16'b0000_0000_1xxx_xxxx:y=4'b0111;
		16'b0000_0001_xxxx_xxxx:y=4'b1000;
		16'b0000_001x_xxxx_xxxx:y=4'b1001;
		16'b0000_01xx_xxxx_xxxx:y=4'b1010;
		16'b0000_1xxx_xxxx_xxxx:y=4'b1011;
		16'b0001_xxxx_xxxx_xxxx:y=4'b1100;
		16'b001x_xxxx_xxxx_xxxx:y=4'b1101;
		16'b01xx_xxxx_xxxx_xxxx:y=4'b1110;
		16'b1xxx_xxxx_xxxx_xxxx:y=4'b1111;
		default:y=4'b0000;
	
endcase
end
endmodule
