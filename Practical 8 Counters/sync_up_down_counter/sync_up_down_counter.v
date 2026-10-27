`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 00:20:07
// Design Name: 
// Module Name: sync_up_down_counter
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


module t_ff (
    input wire clk,
    input wire clr,
    input wire T,
    output reg Q
);

always @(posedge clk) begin
    if (clr)
        Q <= 1'b0;
    else
        Q <= T ^ Q;
end

endmodule


module sync_up_down_counter (
    input wire clk,
    input wire clr,
    input wire UP_DOWN,
    output wire [3:0] count
);

wire T0, T1, T2, T3;

assign T0 = 1'b1;

assign T1 = UP_DOWN ? count[0] :
                       ~count[0];

assign T2 = UP_DOWN ? (count[1] & count[0]) :
                       (~count[1] & ~count[0]);

assign T3 = UP_DOWN ? (count[2] & count[1] & count[0]) :
                       (~count[2] & ~count[1] & ~count[0]);

t_ff FF0 (
    .clk(clk), .clr(clr), .T(T0), .Q(count[0])
);

t_ff FF1 (
    .clk(clk), .clr(clr), .T(T1), .Q(count[1])
);

t_ff FF2 (
    .clk(clk), .clr(clr), .T(T2), .Q(count[2])
);

t_ff FF3 (
    .clk(clk), .clr(clr), .T(T3), .Q(count[3])
);

endmodule