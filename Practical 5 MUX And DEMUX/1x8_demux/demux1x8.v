module demux1x8 (
    input D,
    input S2, S1, S0,
    output Y0, Y1, Y2, Y3,
    output Y4, Y5, Y6, Y7
);

assign Y0 = D & ~S2 & ~S1 & ~S0;
assign Y1 = D & ~S2 & ~S1 &  S0;
assign Y2 = D & ~S2 &  S1 & ~S0;
assign Y3 = D & ~S2 &  S1 &  S0;
assign Y4 = D &  S2 & ~S1 & ~S0;
assign Y5 = D &  S2 & ~S1 &  S0;
assign Y6 = D &  S2 &  S1 & ~S0;
assign Y7 = D &  S2 &  S1 &  S0;

endmodule