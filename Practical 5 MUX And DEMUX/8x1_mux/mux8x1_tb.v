`timescale 1ns / 1ps

module mux8x1_tb;

reg I0, I1, I2, I3;
reg I4, I5, I6, I7;
reg S2, S1, S0;

wire Y;

mux8x1 uut (
    .I0(I0), .I1(I1), .I2(I2), .I3(I3),
    .I4(I4), .I5(I5), .I6(I6), .I7(I7),
    .S2(S2), .S1(S1), .S0(S0),
    .Y(Y)
);

integer i;

initial begin
    // Different input values for easy verification
    {I7, I6, I5, I4, I3, I2, I1, I0} = 8'b10101010;

    for (i = 0; i < 8; i = i + 1) begin
        {S2, S1, S0} = i;
        #10;
    end

    $finish;
end

endmodule