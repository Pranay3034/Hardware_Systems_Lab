`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 16:20:39
// Design Name: 
// Module Name: tb_mux
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


module tb_mux;

    reg I0;
    reg I1;
    reg S;

    wire Y;

    mux uut (
        .I0(I0),
        .I1(I1),
        .S(S),
        .Y(Y)
    );

    initial begin

        I0 = 0; I1 = 0; S = 0;
        #10;

        I0 = 0; I1 = 1; S = 0;
        #10;

        I0 = 0; I1 = 1; S = 1;
        #10;

        I0 = 1; I1 = 0; S = 1;
        #10;

        I0 = 1; I1 = 1; S = 0;
        #10;

        $finish;

    end

endmodule