module gray_bcd(input [3:0] g, output reg [3:0] b);
    reg [3:0] t;

    always @(*) begin
        t[3] = g[3];
        t[2] = t[3] ^ g[2];
        t[1] = t[2] ^ g[1];
        t[0] = t[1] ^ g[0];

        b = (t > 4'd9) ? 4'bxxxx : t;
    end
endmodule
