`timescale 1ns / 1ps

module encoder4x2_tb;

reg D0, D1, D2, D3;
wire Y1, Y0;

encoder4x2 uut (
    .D0(D0), .D1(D1), .D2(D2), .D3(D3),
    .Y1(Y1), .Y0(Y0)
);

integer i;
reg [3:0] inputs;

initial begin
    for (i = 0; i < 4; i = i + 1) begin
        inputs = 4'b0001 << i;
        {D3, D2, D1, D0} = inputs;
        #10;
    end

    $finish;
end

endmodule