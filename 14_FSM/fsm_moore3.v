// more 01011 moore non overlapping

/*
module fsm_moore3(input clk,rst,x,output y);

parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
	  s4=3'b100,
	  s5=3'b101;

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
                ns = s0;
            else
                ns = s1;

        s1: if(x)
                ns = s2;
            else
                ns = s1;

        s2: if(x)
                ns = s2;
            else
                ns = s3;

        s3: if(x)
                ns = s4;
            else
                ns = s1;
	s4: if(x)
                ns = s0;
            else
                ns = s5;
	s5: if(x)
                ns = s1;
            else
                ns = s0;


        //default: ns = s0;

    endcase
end

// Output logic
assign y = (ps == s5)&&(x==1);
endmodule
*/


module fsm_moore3(input clk,rst,x,output y);

parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100,
          s5=3'b101;

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
    ns = s0;

    case(ps)

        s0: if(x)
                ns = s0;
            else
                ns = s1;

        s1: if(x)
                ns = s2;
            else
                ns = s1;

        s2: if(x)
                ns = s0;
            else
                ns = s3;

        s3: if(x)
                ns = s4;
            else
                ns = s1;

        s4: if(x)
                ns = s5;
            else
                ns = s3;

        s5: if(x)
                ns = s0;
            else
                ns = s1;

        default: ns = s0;

    endcase
end

// Moore output logic
assign y = (ps == s5);

endmodule
