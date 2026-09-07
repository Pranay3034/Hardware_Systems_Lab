`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 22:57:37
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;

    reg A;
    reg B;
    reg CIN;

    wire SUM;
    wire COUT;

    // Instantiate Full Adder
    full_adder uut (
        .A(A),
        .B(B),
        .CIN(CIN),
        .SUM(SUM),
        .COUT(COUT)
    );

    initial begin

        // 000
        A = 0;
        B = 0;
        CIN = 0;
        #10;

        // 001
        A = 0;
        B = 0;
        CIN = 1;
        #10;

        // 010
        A = 0;
        B = 1;
        CIN = 0;
        #10;

        // 011
        A = 0;
        B = 1;
        CIN = 1;
        #10;

        // 100
        A = 1;
        B = 0;
        CIN = 0;
        #10;

        // 101
        A = 1;
        B = 0;
        CIN = 1;
        #10;

        // 110
        A = 1;
        B = 1;
        CIN = 0;
        #10;

        // 111
        A = 1;
        B = 1;
        CIN = 1;
        #10;

        $finish;

    end

endmodule