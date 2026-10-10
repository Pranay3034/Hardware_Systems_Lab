`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:00:13
// Design Name: 
// Module Name: demux1x2_tb
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


module demux1x2_tb;

    reg D;
    reg S;

    wire Y0;
    wire Y1;

    demux1x2 uut (
        .D(D),
        .S(S),
        .Y0(Y0),
        .Y1(Y1)
    );

    initial begin

        // D = 0, S = 0
        D = 0;
        S = 0;
        #10;

        // D = 1, S = 0
        D = 1;
        S = 0;
        #10;

        // D = 0, S = 1
        D = 0;
        S = 1;
        #10;

        // D = 1, S = 1
        D = 1;
        S = 1;
        #10;

        $finish;

    end

endmodule