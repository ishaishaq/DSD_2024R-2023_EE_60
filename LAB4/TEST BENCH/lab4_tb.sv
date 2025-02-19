`timescale 1ns/10ps
module lab4_tb;
logic [1:0]a;
logic [1:0]b;
logic red1;
logic green1;
logic blue1;

lab4 UUT(
.a(a),
.b(b),
.red(red1),
.green(green1),
.blue(blue1)
);
 // Test procedure
initial
begin
// Test all combinations of a and b
 a = 2'b00; b = 2'b00; #10;
 a = 2'b00; b = 2'b01; #10;
 a = 2'b00; b = 2'b10; #10;
 a = 2'b00; b = 2'b11; #10;
 a = 2'b01; b = 2'b00; #10;
 a = 2'b01; b = 2'b01; #10;
 a = 2'b01; b = 2'b10; #10;
 a = 2'b01; b = 2'b11; #10;
 a = 2'b10; b = 2'b00; #10;
 a = 2'b10; b = 2'b01; #10;
 a = 2'b10; b = 2'b10; #10;
 a = 2'b10; b = 2'b11; #10;
 a = 2'b11; b = 2'b00; #10;
 a = 2'b11; b = 2'b01; #10;
 a = 2'b11; b = 2'b10; #10;
 a = 2'b11; b = 2'b11; #10;
$stop;  
end 
initial
begin
// Monitor the outputs
 $monitor("Time: %0t , a: %b , b: %b , red: %b , green: %b , blue: %b",  $time, a, b, red1, green1, blue1);
end

endmodule


