`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 09:32:42
// Design Name: 
// Module Name: sync_up_down_counter_tb
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

module sync_up_down_counter_tb;

    reg clk = 0;
    reg clr = 1;
    reg M = 0;

    wire [3:0] count;

    // Simulation only: one update every 10 clock cycles.
    sync_up_down_counter #(
        .CLK_HZ(10),
        .UPDATE_HZ(1)
    ) dut (
        .clk(clk),
        .clr(clr),
        .M(M),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | M=%b | Count=%b (%0d)",
                 $time, M, count, count);

        // Reset
        repeat (2) @(negedge clk);
        clr = 0;

        // Count UP
        M = 0;
        repeat (85) @(negedge clk);

        // Count DOWN
        M = 1;
        repeat (55) @(negedge clk);

        // Reset again
        clr = 1;
        repeat (2) @(negedge clk);
        clr = 0;

        repeat (25) @(negedge clk);

        $display("Simulation completed.");
        $finish;
    end

endmodule
