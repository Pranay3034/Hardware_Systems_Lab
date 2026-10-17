`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 18:33:25
// Design Name: 
// Module Name: jk_ff
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


module jk_ff (
    input wire clk,
    input wire clr,
    input wire preset,
    input wire J,
    input wire K,
    output reg Q
);

always @(posedge clk) begin
    if (clr)
        Q <= 1'b0;
    else if (preset)
        Q <= 1'b1;
    else
        Q <= (J & ~Q) | (~K & Q);
end

endmodule