`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 22:24:04
// Design Name: 
// Module Name: logic_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
    and_gate AND1 (
        .A(A),
        .B(B),
        .Y(AND_OUT)
    );

    // OR Gate
    or_gate OR1 (
        .A(A),
        .B(B),
        .Y(OR_OUT)
    );

    // NOT Gate
    not_gate NOT1 (
        .A(A),
        .Y(NOT_OUT)
    );

    // XOR Gate
    xor_gate XOR1 (
        .A(A),
        .B(B),
        .Y(XOR_OUT)
    );

    // XNOR Gate
    xnor_gate XNOR1 (
        .A(A),
        .B(B),
        .Y(XNOR_OUT)
    );

    // NAND Gate
    nand_gate NAND1 (
        .A(A),
        .B(B),
        .Y(NAND_OUT)
    );

    // NOR Gate
    nor_gate NOR1 (
        .A(A),
        .B(B),
        .Y(NOR_OUT)
    );

endmodule