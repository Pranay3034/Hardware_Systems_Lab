`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 18:52:36
// Design Name: 
// Module Name: top
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


module top (
    input wire clk,
    input wire clr,
    input wire preset,
    input wire D,
    input wire T,
    output wire led0,
    output wire led1
);

d_ff U1 (
    .clk(clk),
    .clr(clr),
    .preset(preset),
    .D(D),
    .Q(led0)
);

t_ff U2 (
    .clk(clk),
    .clr(clr),
    .preset(preset),
    .T(T),
    .Q(led1)
);

endmodule