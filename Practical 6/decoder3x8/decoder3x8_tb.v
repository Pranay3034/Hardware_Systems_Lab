`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2026 23:55:42
// Design Name: 
// Module Name: decoder3x8_tb
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


`timescale 1ns / 1ps

module decoder3x8_tb;

reg A2, A1, A0;

wire Y0, Y1, Y2, Y3;
wire Y4, Y5, Y6, Y7;

decoder3x8 uut (
    .A2(A2), .A1(A1), .A0(A0),
    .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3),
    .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7)
);

integer i;

initial begin
    for (i = 0; i < 8; i = i + 1) begin
        {A2, A1, A0} = i;
        #10;
    end

    $finish;
end

endmodule