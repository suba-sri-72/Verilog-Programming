//1011
// moore overlapping
module fsm_moore1(input clk,rst,x,output y);

parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
	  s4=3'b100;

reg [2:0] ps,ns;

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
                ns = s1;
            else
                ns = s0;

        s1: if(x)
                ns = s1;
            else
                ns = s2;

        s2: if(x)
                ns = s3;
            else
                ns = s0;

        s3: if(x)
                ns = s4;
            else
                ns = s2;
	s4: if(x)
                ns = s1;
            else
                ns = s3;

        //default: ns = s0;

    endcase
end

// Output logic
assign y = (ps == s4);
endmodule
