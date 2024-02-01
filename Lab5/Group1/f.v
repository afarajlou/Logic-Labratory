module F(
input[1:0] i,
input[1:0] c,
output out
);
wire [15:0] outw;

Decoder4X16 dec(i,c,1,outw);
or(out,outw[2],outw[3],outw[5],outw[7],outw[11],outw[13]);



endmodule
