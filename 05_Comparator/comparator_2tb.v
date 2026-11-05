module comparator_2tb;

reg [1:0] a,b;
wire equal,lessthan,greaterthan;
integer i;

comparator_2 dut(a,b,equal,lessthan,greaterthan);

initial begin
    $monitor("a=%b b=%b equal=%b lessthan=%b greaterthan=%b",
              a,b,equal,lessthan,greaterthan);

    for(i=0;i<16;i=i+1) begin
        {a,b}=i;
        #10;
    end

    $finish;
end
endmodule


