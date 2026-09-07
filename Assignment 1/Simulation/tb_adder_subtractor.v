`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 03:09:50
// Design Name: 
// Module Name: tb_adder_subtractor
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


module tb_adder_subtractor;

    reg [3:0] A;
    reg [3:0] B;
    reg MODE;

    wire [3:0] RESULT;
    wire COUT;

    // Instantiate the Adder/Subtractor
    adder_subtractor uut (
        .A(A),
        .B(B),
        .MODE(MODE),
        .RESULT(RESULT),
        .COUT(COUT)
    );

    initial begin

        // -------------------------
        // ADDITION
        // MODE = 0
        // -------------------------

        // 5 + 3 = 8
        A = 4'b0101;
        B = 4'b0011;
        MODE = 0;
        #10;

        // 7 + 2 = 9
        A = 4'b0111;
        B = 4'b0010;
        MODE = 0;
        #10;

        // 15 + 1 = 16
        A = 4'b1111;
        B = 4'b0001;
        MODE = 0;
        #10;


        // -------------------------
        // SUBTRACTION
        // MODE = 1
        // -------------------------

        // 5 - 3 = 2
        A = 4'b0101;
        B = 4'b0011;
        MODE = 1;
        #10;

        // 7 - 2 = 5
        A = 4'b0111;
        B = 4'b0010;
        MODE = 1;
        #10;

        // 9 - 4 = 5
        A = 4'b1001;
        B = 4'b0100;
        MODE = 1;
        #10;

        // 10 - 10 = 0
        A = 4'b1010;
        B = 4'b1010;
        MODE = 1;
        #10;

        $finish;

    end

endmodule
