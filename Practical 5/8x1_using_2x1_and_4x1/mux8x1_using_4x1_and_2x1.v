`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:55:29
// Design Name: 
// Module Name: mux8x1_using_4x1_and_2x1
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


module mux8x1_using_4x1_and_2x1 (
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

wire Y0, Y1;

// First 4:1 MUX
mux4x1_using_2x1 MUX4_0 (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S1(S1),
    .S0(S0),
    .Y(Y0)
);

// Second 4:1 MUX
mux4x1_using_2x1 MUX4_1 (
    .I0(I4),
    .I1(I5),
    .I2(I6),
    .I3(I7),
    .S1(S1),
    .S0(S0),
    .Y(Y1)
);

// Final 2:1 MUX
mux2x1 MUX2_0 (
    .I0(Y0),
    .I1(Y1),
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

module mux4x1_using_2x1 (
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

wire Y0, Y1;

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
    .I0(Y0),
    .I1(Y1),
    .S(S1),
    .Y(Y)
);

endmodule