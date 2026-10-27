`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 19:29:44
// Design Name: 
// Module Name: tb_left_shift_multiplier
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

module tb_left_shift_multiplier;

    reg clk, rst, start;
    reg [3:0] M, Q;
    wire [7:0] A;
    wire done;

    left_shift_multiplier uut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .M(M),
        .Q(Q),
        .A(A),
        .done(done)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        start = 0;
        M = 0;
        Q = 0;

        #20;
        rst = 0;

        @(negedge clk);
        M = 4'b1011;  // 11
        Q = 4'b1101;  // 13
        start = 1;

        @(negedge clk);
        start = 0;

        wait(done);
        #1;

        $display("M = %d, Q = %d", M, Q);
        $display("Product A = %b", A);
        $display("Decimal Product = %d", A);

        if (A == 8'd143)
            $display("TEST PASSED!");
        else
            $display("TEST FAILED!");

        #20;
        $finish;
    end

endmodule
