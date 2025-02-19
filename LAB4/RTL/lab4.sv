`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 06:07:16 PM
// Design Name: 
// Module Name: lab4
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


module lab4(
       input [1:0]a,b,
       output red,green,blue
       );
       assign red=((~b[0])&(~b[1]))|((a[0])&(a[1]))|((a[1])&(~b[1]))|((a[1])&(~b[0]))| (( ~b[1]) &( a[0]));
       assign green=((~a[1])&(~a[1]))|((b[1])&(b[0]))|((~a[1])&(b[0]))|((~a[1])&(b[1]))|((~a[0])&(b[1]));
       assign blue=((a[1])&(~b[1]))|((~a[1])&(b[1]))|((~a[0])&(b[0]))|((a[0])&(~b[0]));
endmodule
