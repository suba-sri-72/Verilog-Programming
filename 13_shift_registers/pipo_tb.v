

module pipo_tb;

reg clk,rst,load;
reg [3:0] pin;
wire [3:0] pout;

pipo dut(clk,rst,load,pin,pout);

always #5 clk=~clk;

initial begin
    clk=0;
    rst=0;
    load=0;
    pin=0;
end

initial begin
    rst=1;
    #10 rst=0;

    pin=4'b1010;
    load=1;
    #10 load=0;

    #20 pin=4'b1100;
    #20 load=1;
    #10 load=0;
end

initial
    #300 $finish;

endmodule
