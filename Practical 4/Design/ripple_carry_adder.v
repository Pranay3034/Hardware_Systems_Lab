`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 23:50:16
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder (
    input [3:0] A,
    input [3:0] B,
    input CIN,

    output [3:0] SUM,
    output COUT
);

    wire C1;
    wire C2;
    wire C3;

    // Full Adder 0 - Least Significant Bit
    full_adder FA0 (
        .A(A[0]),
        .B(B[0]),
        .CIN(CIN),
        .SUM(SUM[0]),
        .COUT(C1)
    );

    // Full Adder 1
    full_adder FA1 (
        .A(A[1]),
        .B(B[1]),
        .CIN(C1),
        .SUM(SUM[1]),
        .COUT(C2)
    );

    // Full Adder 2
    full_adder FA2 (
        .A(A[2]),
        .B(B[2]),
        .CIN(C2),
        .SUM(SUM[2]),
        .COUT(C3)
    );

    // Full Adder 3 - Most Significant Bit
    full_adder FA3 (
        .A(A[3]),
        .B(B[3]),
        .CIN(C3),
        .SUM(SUM[3]),
        .COUT(COUT)
    );

endmodule

module full_adder (
    input A,
    input B,
    input CIN,
    output SUM,
    output COUT
);

    assign SUM  = A ^ B ^ CIN;
    assign COUT = (A & B) | (B & CIN) | (A & CIN);

endmodule