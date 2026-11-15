module parity_checker_tb;
reg [4:0]received_data;
reg mode;
wire error;
integer i;
parity_checker dut(received_data, mode,error);

initial begin
    mode = 0;

    for(i=0; i<32; i=i+1) begin
        received_data= i;
        #10;
        $display("Mode=%b _received_data=%b error=%b",
                  mode,received_data,error);
    end

    mode = 1;

    for(i=0; i<32; i=i+1) begin
        received_data = i;
        #10;
        $display("Mode=%b _received_data=%b error=%b",
                  mode,received_data,error);
    end
end

endmodule