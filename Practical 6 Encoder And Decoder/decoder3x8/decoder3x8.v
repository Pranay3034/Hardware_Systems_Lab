`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2026 23:54:31
// Design Name: 
// Module Name: decoder3x8
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


module decoder3x8 (
    input A2, A1, A0,
    output Y0, Y1, Y2, Y3,
    output Y4, Y5, Y6, Y7
);

assign Y0 = ~A2 & ~A1 & ~A0;
assign Y1 = ~A2 & ~A1 &  A0;
assign Y2 = ~A2 &  A1 & ~A0;
assign Y3 = ~A2 &  A1 &  A0;
assign Y4 =  A2 & ~A1 & ~A0;
assign Y5 =  A2 & ~A1 &  A0;
assign Y6 =  A2 &  A1 & ~A0;
assign Y7 =  A2 &  A1 &  A0;

endmodule