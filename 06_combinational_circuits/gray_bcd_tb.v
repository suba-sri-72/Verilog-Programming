module gray_bcd_tb;
    wire [3:0] b;
    reg  [3:0] g;
    integer i;

    gray_bcd dut(g, b);

    initial begin
        for (i = 0; i < 10; i = i + 1) begin
            g = i ^ (i >> 1);      // gray code of decimal i
            #5;
            $display("decimal=%0d gray=%b bcd=%b %s",
                     i, g, b, (b == i) ? "PASS" : "FAIL");
        end

        // illegal inputs (gray codes that decode to > 9)
        g = 4'b1000; #5 $display("gray=%b bcd=%b (expect xxxx)", g, b);
        g = 4'b1001; #5 $display("gray=%b bcd=%b (expect xxxx)", g, b);

        $finish;
    end
endmodule
