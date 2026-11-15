
module fsm_mealy2(input clk,rst,x,output y);

parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;

reg [2:0] ps,ns;

always @(posedge clk) begin
    if(rst)
        ps <= s0;
    else
        ps <= ns;
end

always @(*) begin
    ns = s0;

    case(ps)

        s0: begin
            if(x)
                ns = s1;
            else
                ns = s0;
        end

        s1: begin
            if(x)
                ns = s1;
            else
                ns = s2;
        end

        s2: begin
            if(x)
                ns = s3;
            else
                ns = s0;
        end

        s3: begin
            if(x)
                ns = s1;
            else
                ns = s4;
        end

        s4: begin
            if(x)
                ns = s1;
            else
                ns = s0;
        end

        default: ns = s0;

    endcase
end

assign y = (ps == s4) && x;

endmodule

