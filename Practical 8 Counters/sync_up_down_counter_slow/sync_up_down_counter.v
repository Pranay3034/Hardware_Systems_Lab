`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 09:28:27
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
    input  wire clk,
    input  wire clr,
    input  wire enable,
    input  wire T,
    output reg  Q
);

    always @(posedge clk) begin
        if (clr)
            Q <= 1'b0;
        else if (enable && T)
            Q <= ~Q;
    end

endmodule


module sync_up_down_counter #(
    parameter integer CLK_HZ = 100_000_000,
    parameter integer UPDATE_HZ = 1
)(
    input  wire clk,
    input  wire clr,
    input  wire M,
    output wire [3:0] count
);

    // Clock divider
    localparam integer DIV_COUNT = CLK_HZ / UPDATE_HZ;

    reg [31:0] divider_count = 0;
    reg tick = 0;

    always @(posedge clk) begin
        if (clr) begin
            divider_count <= 0;
            tick <= 0;
        end
        else if (divider_count == DIV_COUNT - 1) begin
            divider_count <= 0;
            tick <= 1'b1;
        end
        else begin
            divider_count <= divider_count + 1'b1;
            tick <= 1'b0;
        end
    end

    // T flip-flop toggle equations
    wire T0, T1, T2, T3;

    assign T0 = 1'b1;

    // M = 0: UP
    // M = 1: DOWN
    assign T1 = M ? ~count[0]
                  :  count[0];

    assign T2 = M ? (~count[1] & ~count[0])
                  : ( count[1] &  count[0]);

    assign T3 = M ? (~count[2] & ~count[1] & ~count[0])
                  : ( count[2] &  count[1] &  count[0]);

    // All flip-flops share the original 100 MHz clock.
    // The enable makes the counter change once per second.

    t_ff FF0 (
        .clk(clk), .clr(clr), .enable(tick),
        .T(T0), .Q(count[0])
    );

    t_ff FF1 (
        .clk(clk), .clr(clr), .enable(tick),
        .T(T1), .Q(count[1])
    );

    t_ff FF2 (
        .clk(clk), .clr(clr), .enable(tick),
        .T(T2), .Q(count[2])
    );

    t_ff FF3 (
        .clk(clk), .clr(clr), .enable(tick),
        .T(T3), .Q(count[3])
    );

endmodule

