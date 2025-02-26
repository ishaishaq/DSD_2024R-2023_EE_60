`timescale 1ns / 1ps

module lab5b_tb;

    // Inputs
    reg [1:0] a;
    reg [1:0] b;
    reg [2:0] S;

    // Outputs
    wire sega, segb, segc, segd, sege, segf, segg, DP;
    wire [7:0] AN;

    // Instantiate the lab5 module
    lab5b uut (
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

    initial begin
        // Initialize inputs
        a = 2'b00; 
        b = 2'b00; 
        S = 3'b000;

        // Monitor outputs
        $monitor("Time: %0t | a: %b | b: %b | S: %b | sega: %b | segb: %b | segc: %b | segd: %b | sege: %b | segf: %b | segg: %b | DP: %b | AN: %b", 
                 $time, a, b, S, sega, segb, segc, segd, sege, segf, segg, DP, AN);

        // Test cases
        #10 a = 2'b00; b = 2'b00; S = 3'b000; // Test case 1
        #10 a = 2'b00; b = 2'b01; S = 3'b001; // Test case 2
        #10 a = 2'b01; b = 2'b00; S = 3'b010; // Test case 3
        #10 a = 2'b01; b = 2'b01; S = 3'b011; // Test case 4
        #10 a = 2'b10; b = 2'b00; S = 3'b100; // Test case 5
        #10 a = 2'b10; b = 2'b01; S = 3'b101; // Test case 6
        #10 a = 2'b11; b = 2'b00; S = 3'b110; // Test case 7
        #10 a = 2'b11; b = 2'b01; S = 3'b111; // Test case 8

        // Finish simulation
        #10 $finish;
    end

endmodule