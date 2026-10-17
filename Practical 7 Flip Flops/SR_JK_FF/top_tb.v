`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 18:35:37
// Design Name: 
// Module Name: top_tb
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


module top_tb;

reg clk;
reg clr;
reg preset;
reg S, R;
reg J, K;

wire led0, led1;

// Instantiate top module
top dut (
    .clk(clk),
    .clr(clr),
    .preset(preset),
    .S(S),
    .R(R),
    .J(J),
    .K(K),
    .led0(led0),
    .led1(led1)
);

// Clock generation: 10 ns period (100 MHz)
always #5 clk = ~clk;

initial begin
    // Initialize inputs
    clk    = 0;
    clr    = 0;
    preset = 0;
    S = 0; R = 0;
    J = 0; K = 0;

    // Test 1: RESET both flip-flops
    clr = 1;
    preset = 0;
    #10;
    clr = 0;
    #10;

    // Test 2: PRESET both flip-flops
    preset = 1;
    #10;
    preset = 0;
    #10;

    // Test 3: HOLD
    S = 0; R = 0;
    J = 0; K = 0;
    #10;

    // Test 4: SET both flip-flops
    S = 1; R = 0;
    J = 1; K = 0;
    #10;

    // Test 5: RESET through normal inputs
    S = 0; R = 1;
    J = 0; K = 1;
    #10;

    // Test 6: SET again
    S = 1; R = 0;
    J = 1; K = 0;
    #10;

    // Test 7: SR holds, JK toggles
    S = 0; R = 0;
    J = 1; K = 1;
    #10;

    // Test 8: JK toggles again
    #10;

    // Test 9: RESET has priority over PRESET
    clr = 1;
    preset = 1;
    #10;
    clr = 0;
    preset = 0;
    #10;

    $finish;
end

endmodule
