module encoder2_1tb;
reg [1:0]d;
wire y;
encoder2_1 dut(d,y);
initial begin
	#5 d=2'b01;
	#5 d=2'b10;
        #5;
end
endmodule
