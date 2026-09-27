`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 18:59:33
// Design Name: 
// Module Name: demux1x2
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


module demux1x2 (
    input D,
    input S,

    output Y0,
    output Y1
);

    assign Y0 = D & ~S;
    assign Y1 = D & S;

endmodule