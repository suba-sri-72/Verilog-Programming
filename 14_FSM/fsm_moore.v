//moore overlapping
//001
module fsm_moore(input clk,rst,x,output y);

parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;

reg [1:0] ps,ns;

// State register
always @(posedge clk) begin
    if(rst)
        ps <= s0;
    else
        ps <= ns;
end

// Next state logic
always @(*) begin

    case(ps)

        s0: if(x)
                ns = s0;
            else
                ns = s1;

        s1: if(x)
                ns = s0;
            else
                ns = s2;

        s2: if(x)
                ns = s3;
            else
                ns = s2;

        s3: if(x)
                ns = s0;
            else
                ns = s1;

        //default: ns = s0;

    endcase
end

// Output logic
assign y = (ps == s3);
endmodule