module add_sub_fa(input [3:0]a,b,input cin,output [3:0]s,output cout);
wire c1,c2,c3;
wire [3:0]bx;
assign bx=b^{4{cin}};
fulladder fa0(a[0],bx[0],cin,s[0],c1);
fulladder fa1(a[1],bx[1],c1,s[1],c2);
fulladder fa2(a[2],bx[2],c2,s[2],c3);
fulladder fa3(a[3],bx[3],c3,s[3],cout);
endmodule
