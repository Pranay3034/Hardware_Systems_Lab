`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2026 23:30:22
// Design Name: 
// Module Name: encoder8x3_tb
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

module encoder8x3_tb;

reg D0, D1, D2, D3;
reg D4, D5, D6, D7;

wire Y2, Y1, Y0;

encoder8x3 uut (
    .D0(D0), .D1(D1), .D2(D2), .D3(D3),
    .D4(D4), .D5(D5), .D6(D6), .D7(D7),
    .Y2(Y2), .Y1(Y1), .Y0(Y0)
);

integer i;
reg [7:0] inputs;

initial begin
    for (i = 0; i < 8; i = i + 1) begin
        inputs = 8'b00000001 << i;

        {D7, D6, D5, D4, D3, D2, D1, D0} = inputs;

        #10;
    end

    $finish;
end

endmodule