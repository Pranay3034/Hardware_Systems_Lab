`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 22:55:42
// Design Name: 
// Module Name: full_adder
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


module full_adder (
    input A,
    input B,
    input CIN,

    output SUM,
    output COUT
);

    wire SUM1;
    wire CARRY1;
    wire CARRY2;

    // First Half Adder
    half_adder HA1 (
        .A(A),
        .B(B),
        .SUM(SUM1),
        .CARRY(CARRY1)
    );

    // Second Half Adder
    half_adder HA2 (
        .A(SUM1),
        .B(CIN),
        .SUM(SUM),
        .CARRY(CARRY2)
    );

    // OR Gate
    or_gate OR1 (
        .A(CARRY1),
        .B(CARRY2),
        .Y(COUT)
    );

endmodule