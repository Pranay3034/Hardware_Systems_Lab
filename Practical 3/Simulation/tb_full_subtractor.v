`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 23:25:21
// Design Name: 
// Module Name: tb_full_subtractor
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


module tb_full_subtractor;
    reg A;
    reg B;
    reg BIN;

    wire DIFF;
    wire BOUT;

    // Instantiate Full Subtractor
    full_subtractor uut (
        .A(A),
        .B(B),
        .BIN(BIN),
        .DIFF(DIFF),
        .BOUT(BOUT)
    );

    initial begin

        // 000
        A = 0;
        B = 0;
        BIN = 0;
        #10;

        // 001
        A = 0;
        B = 0;
        BIN = 1;
        #10;

        // 010
        A = 0;
        B = 1;
        BIN = 0;
        #10;

        // 011
        A = 0;
        B = 1;
        BIN = 1;
        #10;

        // 100
        A = 1;
        B = 0;
        BIN = 0;
        #10;

        // 101
        A = 1;
        B = 0;
        BIN = 1;
        #10;

        // 110
        A = 1;
        B = 1;
        BIN = 0;
        #10;

        // 111
        A = 1;
        B = 1;
        BIN = 1;
        #10;

        $finish;

    end

endmodule
