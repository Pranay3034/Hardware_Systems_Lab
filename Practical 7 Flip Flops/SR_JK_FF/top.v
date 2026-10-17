`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 18:34:51
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
    input wire S, R,
    input wire J, K,
    output wire led0,
    output wire led1
);

sr_ff U1 (
    .clk(clk),
    .clr(clr),
    .preset(preset),
    .S(S),
    .R(R),
    .Q(led0)
);

jk_ff U2 (
    .clk(clk),
    .clr(clr),
    .preset(preset),
    .J(J),
    .K(K),
    .Q(led1)
);

endmodule