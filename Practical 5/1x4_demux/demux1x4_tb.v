`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:14:23
// Design Name: 
// Module Name: demux1x4_tb
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

module demux1x4_tb;

    reg D;
    reg S1;
    reg S0;

    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    demux1x4 uut (
        .D(D),
        .S1(S1),
        .S0(S0),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin

        // D = 0
        D = 0;

        S1 = 0;
        S0 = 0;
        #10;

        S1 = 0;
        S0 = 1;
        #10;

        S1 = 1;
        S0 = 0;
        #10;

        S1 = 1;
        S0 = 1;
        #10;

        // D = 1
        D = 1;

        // Select Y0
        S1 = 0;
        S0 = 0;
        #10;

        // Select Y1
        S1 = 0;
        S0 = 1;
        #10;

        // Select Y2
        S1 = 1;
        S0 = 0;
        #10;

        // Select Y3
        S1 = 1;
        S0 = 1;
        #10;

        $finish;

    end

endmodule