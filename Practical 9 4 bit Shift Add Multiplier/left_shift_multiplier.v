`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 19:28:41
// Design Name: 
// Module Name: left_shift_multiplier
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


module left_shift_multiplier (
    input clk,
    input rst,
    input start,
    input [3:0] M,
    input [3:0] Q,
    output reg [7:0] A,
    output reg done
);

    reg [7:0] multiplicand;
    reg [3:0] multiplier;
    reg [2:0] count;
    reg busy;

    always @(posedge clk) begin
        if (rst) begin
            multiplicand <= 8'b0;
            multiplier   <= 4'b0;
            A            <= 8'b0;
            count        <= 0;
            busy         <= 0;
            done         <= 0;
        end
        else begin
            done <= 0;

            // Load inputs
            if (start && !busy) begin
                multiplicand <= {4'b0000, M};
                multiplier   <= Q;
                A            <= 8'b0;
                count        <= 0;
                busy         <= 1;
            end

            else if (busy) begin

                // Add multiplicand when Q[0] is 1
                if (multiplier[0])
                    A <= A + multiplicand;

                // Shift multiplicand left
                multiplicand <= multiplicand << 1;

                // Shift multiplier right
                multiplier <= multiplier >> 1;

                // Four iterations completed
                if (count == 3) begin
                    busy <= 0;
                    done <= 1;
                end
                else begin
                    count <= count + 1'b1;
                end
            end
        end
    end

endmodule
