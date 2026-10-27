`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 00:21:45
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

reg clk;
reg clr;
reg UP_DOWN;

wire [3:0] count;

sync_up_down_counter uut (
    .clk(clk),
    .clr(clr),
    .UP_DOWN(UP_DOWN),
    .count(count)
);

// Clock period = 10 ns
always #5 clk = ~clk;

initial begin
    $monitor(
        "Time=%0t | UP_DOWN=%b | clr=%b | count=%b | decimal=%0d",
        $time, UP_DOWN, clr, count, count
    );

    clk = 0;
    clr = 1;
    UP_DOWN = 1;

    // Reset to zero
    #12;
    clr = 0;

    // Count upward for 8 clock cycles
    repeat (8) @(negedge clk);

    // Change direction: count downward
    UP_DOWN = 0;

    // Count downward for 5 clock cycles
    repeat (5) @(negedge clk);

    // Reset counter
    clr = 1;
    #10;
    clr = 0;

    // Count upward again
    UP_DOWN = 1;
    repeat (4) @(negedge clk);

    $finish;
end

endmodule