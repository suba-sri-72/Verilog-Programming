module parity_generator(
    input [3:0] data,
    input mode,
    output reg parity,
    output [4:0] transmitted_data
);

always @(*) begin
    if (mode == 0)
        parity = ^data;       // Even 
    else
        parity = ~(^data);    // Odd 
end

assign transmitted_data = {data, parity};

endmodule
