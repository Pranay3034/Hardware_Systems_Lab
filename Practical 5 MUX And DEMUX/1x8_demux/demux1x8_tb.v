`timescale 1ns / 1ps

module demux1x8_tb;

reg D;
reg S2, S1, S0;

wire Y0, Y1, Y2, Y3;
wire Y4, Y5, Y6, Y7;

demux1x8 uut (
    .D(D),
    .S2(S2), .S1(S1), .S0(S0),
    .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3),
    .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7)
);

integer i;

initial begin
    D = 1'b1;

    for (i = 0; i < 8; i = i + 1) begin
        {S2, S1, S0} = i;
        #10;
    end

    D = 1'b0;
    {S2, S1, S0} = 3'b000;
    #10;

    $finish;
end

endmodule