`timescale 1ns / 1ps

module logic_gates_tb;

    // Inputs
    reg A;
    reg B;

    // Outputs
    wire AND_OUT;
    wire OR_OUT;
    wire NOT_OUT;
    wire XOR_OUT;
    wire XNOR_OUT;
    wire NAND_OUT;
    wire NOR_OUT;

    // Instantiate the single logic gates module
    logic_gates uut (
        .A(A),
        .B(B),
        .AND_OUT(AND_OUT),
        .OR_OUT(OR_OUT),
        .NOT_OUT(NOT_OUT),
        .XOR_OUT(XOR_OUT),
        .XNOR_OUT(XNOR_OUT),
        .NAND_OUT(NAND_OUT),
        .NOR_OUT(NOR_OUT)
    );

    initial begin

        // Test Case 1
        A = 0;
        B = 0;
        #10;

        // Test Case 2
        A = 0;
        B = 1;
        #10;

        // Test Case 3
        A = 1;
        B = 0;
        #10;

        // Test Case 4
        A = 1;
        B = 1;
        #10;

        $finish;

    end

endmodule