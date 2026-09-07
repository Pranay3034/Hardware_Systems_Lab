`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 03:07:10
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor (
    input [3:0] A,
    input [3:0] B,
    input MODE,

    output [3:0] RESULT,
    output COUT
);

    wire [3:0] B_MODIFIED;
    wire C1, C2, C3;

    // Modify B depending on MODE
    // MODE = 0 → B
    // MODE = 1 → ~B
    assign B_MODIFIED = B ^ {4{MODE}};

    // Four Full Adders

    full_adder FA0 (
        .A(A[0]),
        .B(B_MODIFIED[0]),
        .CIN(MODE),
        .SUM(RESULT[0]),
        .COUT(C1)
    );

    full_adder FA1 (
        .A(A[1]),
        .B(B_MODIFIED[1]),
        .CIN(C1),
        .SUM(RESULT[1]),
        .COUT(C2)
    );

    full_adder FA2 (
        .A(A[2]),
        .B(B_MODIFIED[2]),
        .CIN(C2),
        .SUM(RESULT[2]),
        .COUT(C3)
    );

    full_adder FA3 (
        .A(A[3]),
        .B(B_MODIFIED[3]),
        .CIN(C3),
        .SUM(RESULT[3]),
        .COUT(COUT)
    );

endmodule