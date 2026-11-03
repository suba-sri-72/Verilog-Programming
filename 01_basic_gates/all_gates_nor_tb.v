module all_gates_nor_tb;

reg A,B;
wire Y_NOT,Y_AND,Y_OR,Y_NAND,Y_NOR,Y_XOR,Y_XNOR;

integer i;

all_gates_nor dut(
    A,B,Y_NOT,Y_AND,Y_OR,Y_NAND,Y_NOR,Y_XOR,Y_XNOR
);

initial begin

$monitor("A=%b B=%b | NOT=%b AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
A,B,Y_NOT,Y_AND,Y_OR,Y_NAND,Y_NOR,Y_XOR,Y_XNOR);

for(i=0;i<4;i=i+1)
begin
    {A,B}=i;
    #10;
end

$finish;
end

endmodule