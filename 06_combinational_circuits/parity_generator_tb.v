module parity_generator_tb;
reg [3:0]data;
reg mode;
wire parity;
wire [4:0]transmitted_data;
integer i;
parity_generator dut(data, mode, parity, transmitted_data);

initial begin
    mode = 0;

    for(i=0; i<16; i=i+1) begin
        data = i;
        #10;
        $display("Mode=%b Data=%b Parity=%b Transmitted=%b",
                  mode, data, parity, transmitted_data);
    end

    mode = 1;

    for(i=0; i<16; i=i+1) begin
        data = i;
        #10;
        $display("Mode=%b Data=%b Parity=%b Transmitted=%b",
                  mode, data, parity, transmitted_data);
    end

    $finish;
end

endmodule


