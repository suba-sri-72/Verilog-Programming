module mux4_1tb;
reg [3:0]i;
reg [1:0]s;
wire y;
integer m;
mux4_1 dut(i,s,y);
initial begin
$monitor("i=%b s=%b y=%b",i,s,y);
for(m=0;m<64;m=m+1)begin
{i,s}=m;
#10;
end
end
endmodule



