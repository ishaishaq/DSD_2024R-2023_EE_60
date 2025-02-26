`timescale 1ns / 1ps

module lab5_tb; // Testbench signals reg [1:0] a, b; reg [2:0] S; wire sega, segb, segc, segd, sege, segf, segg, DP; wire [7:0] AN;
logic [1:0]a;
logic [1:0]b;
logic S; 
logic sega; 
logic segb;
logic segc; 
logic segd;
logic sege;
logic segf; 
logic segg;
logic DP; 
logic AN;
// Instantiate the module under test
lab5 uut (
    .a(a), 
    .b(b), 
    .S(S), 
    .sega(sega), 
    .segb(segb), 
    .segc(segc), 
    .segd(segd), 
    .sege(sege), 
    .segf(segf), 
    .segg(segg), 
    .DP(DP), 
    .AN(AN)
);

// Test sequence
initial begin
    // Initialize inputs
    a = 2'b00; b = 2'b00; S = 3'b000;
    #10;
    
    // Apply different test cases
    a = 2'b01; b = 2'b00; S = 3'b001;
    #10;
    
    a = 2'b10; b = 2'b01; S = 3'b010;
    #10;
    
    a = 2'b11; b = 2'b10; S = 3'b011;
    #10;
    
    a = 2'b00; b = 2'b11; S = 3'b100;
    #10;
    
    a = 2'b01; b = 2'b01; S = 3'b101;
    #10;
    
    a = 2'b10; b = 2'b10; S = 3'b110;
    #10;
    
    a = 2'b11; b = 2'b11; S = 3'b111;
    #10;
    
    // End simulation
    $stop;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t a=%b b=%b S=%b | sega=%b segb=%b segc=%b segd=%b sege=%b segf=%b segg=%b DP=%b AN=%b", 
             $time, a, b, S, sega, segb, segc, segd, sege, segf, segg, DP, AN);
end

endmodule