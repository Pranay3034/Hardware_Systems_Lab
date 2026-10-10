`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 23:51:46
// Design Name: 
// Module Name: tb_ripple_carry_adder
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


module tb_ripple_carry_adder;

    reg [3:0] A;
    reg [3:0] B;
    reg CIN;

    wire [3:0] SUM;
    wire COUT;

    // Instantiate Ripple Carry Adder
    ripple_carry_adder uut (
        .A(A),
        .B(B),
        .CIN(CIN),
        .SUM(SUM),
        .COUT(COUT)
    );

    initial begin

        // Test 1: 5 + 3 = 8
        A = 4'b0101;
        B = 4'b0011;
        CIN = 0;
        #10;

        // Test 2: 7 + 2 = 9
        A = 4'b0111;
        B = 4'b0010;
        CIN = 0;
        #10;

        // Test 3: 9 + 6 = 15
        A = 4'b1001;
        B = 4'b0110;
        CIN = 0;
        #10;

        // Test 4: 15 + 1 = 16
        A = 4'b1111;
        B = 4'b0001;
        CIN = 0;
        #10;

        // Test 5: 5 + 3 + 1 = 9
        A = 4'b0101;
        B = 4'b0011;
        CIN = 1;
        #10;

        // Test 6: 0 + 0 = 0
        A = 4'b0000;
        B = 4'b0000;
        CIN = 0;
        #10;

        $finish;

    end

endmodule