module all_gates_nor (
    input A, B,
    output Y_NOT, Y_AND, Y_OR,
    output Y_NAND, Y_NOR, Y_XOR, Y_XNOR
);

wire n1,n2,n3,n4,n5,n6,n7,n8;

    // NOT using NOR
    assign Y_NOT = ~(A | A);

    // OR using NOR
    assign n1 = ~(A | B);
    assign Y_OR = ~(n1 | n1);

    // NOR
    assign Y_NOR = ~(A | B);

    // AND using NOR
    assign n2 = ~(A | A);
    assign n3 = ~(B | B);
    assign Y_AND = ~(n2 | n3);

    // NAND using NOR
    assign n4 = ~(A | A);
    assign n5 = ~(B | B);
    assign n6 = ~(n4 | n5);
    assign Y_NAND = ~(n6 | n6);

    // XNOR using NOR
    assign n7 = ~(A | B);
    assign n8 = ~(A | n7);
    wire n9 = ~(B | n7);
    assign Y_XNOR = ~(n8 | n9);

    // XOR using NOR
    assign Y_XOR = ~(Y_XNOR | Y_XNOR);

endmodule