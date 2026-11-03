module add_sub_fs_tb;

reg [3:0] a,b;
reg cin;
wire [3:0] d;
wire bout;

add_sub_fs dut(a,b,cin,d,bout);

initial begin
    a=4'd9; b=4'd4; cin=0;
    #10;

    a=4'd9; b=4'd4; cin=1;
    #10;

    a=4'd5; b=4'd8; cin=0;
    #10;

    $finish;
end

initial begin
    $monitor("a=%d b=%d cin=%b d=%d bout=%b",
              a,b,cin,d,bout);
end

endmodule