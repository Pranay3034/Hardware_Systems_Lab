`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:41:06
// Design Name: 
// Module Name: mux8x1_using_2x1_tb
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


`timescale 1ns / 1ps

module mux8x1_using_2x1_tb;

    reg I0, I1, I2, I3;
    reg I4, I5, I6, I7;

    reg S2, S1, S0;

    wire Y;

    mux8x1_using_2x1 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .S2(S2),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin

        // Input values
        I0 = 0;
        I1 = 1;
        I2 = 0;
        I3 = 1;
        I4 = 0;
        I5 = 1;
        I6 = 0;
        I7 = 1;

        // Select I0
        S2 = 0;
        S1 = 0;
        S0 = 0;
        #10;

        // Select I1
        S2 = 0;
        S1 = 0;
        S0 = 1;
        #10;

        // Select I2
        S2 = 0;
        S1 = 1;
        S0 = 0;
        #10;

        // Select I3
        S2 = 0;
        S1 = 1;
        S0 = 1;
        #10;

        // Select I4
        S2 = 1;
        S1 = 0;
        S0 = 0;
        #10;

        // Select I5
        S2 = 1;
        S1 = 0;
        S0 = 1;
        #10;

        // Select I6
        S2 = 1;
        S1 = 1;
        S0 = 0;
        #10;

        // Select I7
        S2 = 1;
        S1 = 1;
        S0 = 1;
        #10;

        $finish;

    end

endmodule