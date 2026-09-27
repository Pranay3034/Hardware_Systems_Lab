`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 16:43:16
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

    reg I0, I1, I2, I3;
    reg S1, S0;

    wire Y;

    mux uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin

        // Input values
        I0 = 0;
        I1 = 1;
        I2 = 0;
        I3 = 1;

        // Select I0
        S1 = 0;
        S0 = 0;
        #10;

        // Select I1
        S1 = 0;
        S0 = 1;
        #10;

        // Select I2
        S1 = 1;
        S0 = 0;
        #10;

        // Select I3
        S1 = 1;
        S0 = 1;
        #10;

        $finish;

    end

endmodule