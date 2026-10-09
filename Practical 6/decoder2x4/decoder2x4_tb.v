`timescale 1ns / 1ps

module decoder2x4_tb;

reg A1, A0;
wire Y0, Y1, Y2, Y3;

decoder2x4 uut (
    .A1(A1), .A0(A0),
    .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3)
);

integer i;

initial begin
    for (i = 0; i < 4; i = i + 1) begin
        {A1, A0} = i;
        #10;
    end

    $finish;
end

endmodule