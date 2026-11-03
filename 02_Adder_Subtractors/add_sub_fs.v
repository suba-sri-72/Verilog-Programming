

module add_sub_fs(input [3:0]a,b,input cin,output [3:0]d,output bout);
wire [3:0]w;
assign w=b^{4{cin}};

wire c1,c2,c3;
fullsubtractor f0(a[0],w[0],cin,d[0],c1);
fullsubtractor f1(a[1],w[1],c1,d[1],c2);
fullsubtractor f2(a[2],w[2],c2,d[2],c3);
fullsubtractor f3(a[3],w[3],c3,d[3],bout);
endmodule
