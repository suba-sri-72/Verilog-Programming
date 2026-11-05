module decoder4_16tb;

reg [3:0] d;
wire [15:0] y;
integer i;

decoder4_16 dut(d,y);

initial begin
    $monitor("d=%b y=%b",d,y);

    for(i=0;i<16;i=i+1) begin
        d=i;
        #10;
    end
end

endmodule