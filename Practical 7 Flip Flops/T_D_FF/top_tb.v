`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 18:53:19
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


`timescale 1ns / 1ps

module top_tb;

reg clk;
reg clr;
reg preset;
reg D, T;

wire led0, led1;

top dut (
    .clk(clk),
    .clr(clr),
    .preset(preset),
    .D(D),
    .T(T),
    .led0(led0),
    .led1(led1)
);

// 10 ns clock period
always #5 clk = ~clk;

initial begin
    clk = 0;
    clr = 0;
    preset = 0;
    D = 0;
    T = 0;

    // Test 1: Reset both flip-flops
    clr = 1;
    preset = 0;
    #10;
    clr = 0;
    #10;

    // Test 2: Preset both flip-flops
    preset = 1;
    #10;
    preset = 0;
    #10;

    // Test 3: D = 0, T = 0 (T holds)
    D = 0;
    T = 0;
    #10;

    // Test 4: D = 1, T = 0 (T holds)
    D = 1;
    T = 0;
    #10;

    // Test 5: D = 0, T = 1 (T toggles)
    D = 0;
    T = 1;
    #10;

    // Test 6: D = 1, T = 1 (T toggles again)
    D = 1;
    T = 1;
    #10;

    // Test 7: Reset has priority over preset
    clr = 1;
    preset = 1;
    #10;
    clr = 0;
    preset = 0;
    #10;

    $finish;
end

endmodule