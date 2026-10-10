`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:25:26
// Design Name: 
// Module Name: mux4x1_using_2x1
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


module mux4x1_using_2x1 (
    input I0,
    input I1,
    input I2,
    input I3,

    input S1,
    input S0,

    output Y
);

    wire Y0;
    wire Y1;

    // First stage
    mux2x1 MUX0 (
        .I0(I0),
        .I1(I1),
        .S(S0),
        .Y(Y0)
    );

    mux2x1 MUX1 (
        .I0(I2),
        .I1(I3),
        .S(S0),
        .Y(Y1)
    );

    // Second stage
    mux2x1 MUX2 (
        .I0(Y0),
        .I1(Y1),
        .S(S1),
        .Y(Y)
    );

endmodule

module mux2x1 (
    input I0,
    input I1,
    input S,
    output Y
);

    assign Y = (~S & I0) | (S & I1);

endmodule