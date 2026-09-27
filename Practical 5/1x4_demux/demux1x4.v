`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:13:10
// Design Name: 
// Module Name: demux1x4
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


module demux1x4 (
    input D,
    input S1,
    input S0,

    output Y0,
    output Y1,
    output Y2,
    output Y3
);

    assign Y0 = D & ~S1 & ~S0;
    assign Y1 = D & ~S1 &  S0;
    assign Y2 = D &  S1 & ~S0;
    assign Y3 = D &  S1 &  S0;

endmodule