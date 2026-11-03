module all_gate_nand (
    input A, B,
    output Y_NOT, Y_AND, Y_OR,
    output Y_NOR, Y_XOR, Y_XNOR
);

    wire n1, n2, n3, n4, n5, n6;

    // NOT using NAND
    assign Y_NOT = ~(A & A);

    // AND using NAND
    assign n1 = ~(A & B);
    assign Y_AND = ~(n1 & n1);

    // OR using NAND
    assign n2 = ~(A & A);
    assign n3 = ~(B & B);
    assign Y_OR = ~(n2 & n3);

    // NOR using NAND
    assign Y_NOR = ~(Y_OR & Y_OR);

    // XOR using NAND
    assign n4 = ~(A & B);
    assign n5 = ~(A & n4);
    assign n6 = ~(B & n4);
    assign Y_XOR = ~(n5 & n6);

    // XNOR using NAND
    assign Y_XNOR = ~(Y_XOR & Y_XOR);

endmodule
