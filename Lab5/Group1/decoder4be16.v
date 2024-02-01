module Decoder4X16(i,c,En,out);
input [1:0] i;
input [1:0] c;
input  En;
output [15:0] out;
wire [3:0]w;
decoder1 dec1(i,En,w);
decoder2 dec2(c,w[0],out[3:0]);
decoder3 dec3(c,w[1],out[7:4]);
decoder4 dec4(c,w[2],out[11:8]);
decoder5 dec5(c,w[3],out[15:12]);

endmodule
