module logic_gates (
    input A,
    input B,

    output AND_OUT,
    output OR_OUT,
    output NOT_OUT,
    output XOR_OUT,
    output XNOR_OUT,
    output NAND_OUT,
    output NOR_OUT
);

    // AND Gate
    assign AND_OUT = A & B;

    // OR Gate
    assign OR_OUT = A | B;

    // NOT Gate
    assign NOT_OUT = ~A;

    // XOR Gate
    assign XOR_OUT = A ^ B;

    // XNOR Gate
    assign XNOR_OUT = ~(A ^ B);

    // NAND Gate
    assign NAND_OUT = ~(A & B);

    // NOR Gate
    assign NOR_OUT = ~(A | B);

endmodule