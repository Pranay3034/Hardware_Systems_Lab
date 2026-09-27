`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:38:46
// Design Name: 
// Module Name: mux8x1_using_2x1
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


module mux8x1_using_2x1 (
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,

    input S2,
    input S1,
    input S0,

    output Y
);

    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    wire Y4;
    wire Y5;

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

    mux2x1 MUX2 (
        .I0(I4),
        .I1(I5),
        .S(S0),
        .Y(Y2)
    );

    mux2x1 MUX3 (
        .I0(I6),
        .I1(I7),
        .S(S0),
        .Y(Y3)
    );


    // Second stage
    mux2x1 MUX4 (
        .I0(Y0),
        .I1(Y1),
        .S(S1),
        .Y(Y4)
    );

    mux2x1 MUX5 (
        .I0(Y2),
        .I1(Y3),
        .S(S1),
        .Y(Y5)
    );


    // Third stage
    mux2x1 MUX6 (
        .I0(Y4),
        .I1(Y5),
        .S(S2),
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
