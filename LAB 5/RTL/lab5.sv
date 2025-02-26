module lab5(input [1:0] a,[1:0] b,
input [2:0] S,
output sega,segb,segc,segd,sege,segf,segg,DP, output [7:0] AN
);
//assigning inputs to segments
assign sega=((~a[1])&(~a[0])&(~b[1])&(~b[0]))|((~a[1])&(~a[0])&(~b[1])&(b[0]))|((a[1])&(a[0])&(~b[1])&(b[0]))|((a[1])&(~a[0])&(b[1])&(b[0]));
assign segb=((a[1])&(b[1])&(b[0]))|((a[0])&(b[1])&(~b[0]))|((a[0])&(a[1])&(~b[0]))|((~a[1])&(a[0])&(~b[1])&(b[0]));
assign segc=((~a[1])&(~a[0])&(b[1])&(~b[0]))|((a[1])&(a[0])&(b[1]))|((a[1])&(a[0])&(~b[0]));
assign segd=((~a[1])&(~a[0])&(~b[1])&(b[0]))|((~a[1])&(a[0])&(~b[1])&(~b[0]))|((a[1])&(~a[0])&(b[1])&(~b[0]))|((a[0])&(b[1])&(b[0]));
assign sege=((~a[1])&(b[0]))|((~a[1])&(a[0])&(~b[1]))|((~a[0])&(~b[1])&(b[0]))|((~a[1])&(~a[0])&(b[1]));
assign segf=((~a[1])&(~a[0])&(b[0]))|((~a[1])&(b[1])&(b[0]))|((~a[1])&(~a[0])&(b[1]))|((a[1])&(a[0])&(~b[1])&(b[0]));
assign segg=((~a[1])&(~a[0])&(~b[1]))|((a[1])&(a[0])&(~b[1])&(~b[0]))|((~a[1])&(a[0])&(b[1])&(b[0]));
assign DP=0;
//assigning inputs to selector
assign AN[0]=((S[2])&(S[1])&(S[0]));
assign AN[1]=((S[2])&(S[1])&(~S[0]));
assign AN[2]=((S[2])&(~S[1])&(S[0]));
assign AN[3]=((S[2])&(~S[1])&(~S[0]));
assign AN[4]=((~S[2])&(S[1])&(S[0]));
assign AN[5]=((~S[2])&(S[1])&(~S[0]));
assign AN[6]=((~S[2])&(~S[1])&(S[0]));
assign AN[7]=((~S[2])&(~S[1])&(~S[0]));

endmodule