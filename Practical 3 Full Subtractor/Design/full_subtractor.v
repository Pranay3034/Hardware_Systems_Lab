`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 23:23:24
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor (
    input A,
    input B,
    input BIN,

    output DIFF,
    output BOUT
);

    wire DIFF1;
    wire BORROW1;
    wire BORROW2;

    // First Half Subtractor
    half_subtractor HS1 (
        .A(A),
        .B(B),
        .DIFF(DIFF1),
        .BORROW(BORROW1)
    );

    // Second Half Subtractor
    half_subtractor HS2 (
        .A(DIFF1),
        .B(BIN),
        .DIFF(DIFF),
        .BORROW(BORROW2)
    );

    // OR Gate
    or_gate OR1 (
        .A(BORROW1),
        .B(BORROW2),
        .Y(BOUT)
    );

endmodule