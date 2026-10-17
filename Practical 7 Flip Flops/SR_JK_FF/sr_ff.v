`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2026 18:32:56
// Design Name: 
// Module Name: sr_ff
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


module sr_ff (
    input wire clk,
    input wire clr,
    input wire preset,
    input wire S,
    input wire R,
    output reg Q
);

always @(posedge clk) begin
    if (clr)
        Q <= 1'b0;
    else if (preset)
        Q <= 1'b1;
    else if (!(S && R))
        Q <= S | (~R & Q);
    // S=R=1: hold previous state
end

endmodule
