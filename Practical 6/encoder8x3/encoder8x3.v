`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2026 23:29:21
// Design Name: 
// Module Name: encoder8x3
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


module encoder8x3 (
    input D0, D1, D2, D3,
    input D4, D5, D6, D7,
    output Y2, Y1, Y0
);

assign Y2 = D4 | D5 | D6 | D7;
assign Y1 = D2 | D3 | D6 | D7;
assign Y0 = D1 | D3 | D5 | D7;

endmodule