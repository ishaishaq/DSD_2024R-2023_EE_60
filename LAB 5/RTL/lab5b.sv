module lab5b(
    input [1:0] a,
    input [1:0] b,
    input [2:0] S,
    output reg sega, segb, segc, segd, sege, segf, segg, DP,
    output reg [7:0] AN
);

always @(*) begin
    // Default values
    sega = 0; segb = 0; segc = 0; segd = 0; sege = 0; segf = 0; segg = 0;
    DP = 0; // Assuming DP is always 0 as per your original code

    // Logic for segment outputs based on inputs a and b
    if (a == 2'b00 && b == 2'b00) begin
        sega = 1; // Activate sega first
    end else if (a == 2'b00 && b == 2'b01) begin
        segb = 1; // Activate segb next
    end else if (a == 2'b01 && b == 2'b00) begin
        segc = 1; // Activate segc next
    end else if (a == 2'b01 && b == 2'b01) begin
        segd = 1; // Activate segd next
    end else if (a == 2'b10 && b == 2'b00) begin
        sege = 1; // Activate sege next
    end else if (a == 2'b10 && b == 2'b01) begin
        segf = 1; // Activate segf next
    end else if (a == 2'b11 && b == 2'b00) begin
        segg = 1; // Activate segg last
    end


        // Logic for AN outputs based on S
        AN = 8'b11111111; // Default all AN to high (active low)
        case (S)
            3'b000: AN[0] = 0;
            3'b001: AN[1] = 0;
            3'b010: AN[2] = 0;
            3'b011: AN[3] = 0;
            3'b100: AN[4] = 0;
            3'b101: AN[5] = 0;
            3'b110: AN[6] = 0;
            3'b111: AN[7] = 0;
        endcase
    end

endmodule