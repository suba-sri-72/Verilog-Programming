//fsm
//1101 mealy non overalapping

module fsm_mealy3(input clk,rst,x,output y);

parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;

reg [1:0] ps,ns;


always @(posedge clk) begin
    if(rst)
        ps <= s0;
    else
        ps <= ns;
end


always @(*) begin

    case(ps)

        s0: if(x)
                ns = s1;
            else
                ns = s0;

        s1: if(x)
                ns = s2;
            else
                ns = s0;

        s2: if(x)
                ns = s2;
            else
                ns = s3;

        s3: if(x)
                ns = s1;
            else
                ns = s0;

        default: ns = s0;

    endcase
end

// Output logic
assign y = (ps == s3)&&(x==1);

endmodule

