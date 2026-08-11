`timescale 1ns / 1ps
module iir_rc_filter (
    input  wire        clk_fast,
    input  wire        rst_n,
    input  wire        force_clear_i,     // instant accumulator drain
    input  wire [15:0] adc_p_refl,
    output wire [15:0] p_refl_filtered
);
 
    // ALPHA_SHIFT = 13  →  tau ≈ 8192 clk_fast cycles ≈ 81.92 µs at 100 MHz
    // (16 - ALPHA_SHIFT) >= 0  →  ALPHA_SHIFT <= 16  (13 <= 16)
    localparam integer ALPHA_SHIFT = 13;
 
    // Q16.16 accumulator: upper 16 bits = integer output
    reg [31:0] accumulator;
 
    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n)
            accumulator <= 32'd0;
        else if (force_clear_i)           // FIX #5b: drain on interlock reset
            accumulator <= 32'd0;
        else begin
            // IIR update: acc += (input - acc_top) >> ALPHA_SHIFT
            // Equivalent to: acc = acc*(1 - 1/2^N) + input*(1/2^N) * 2^16
            // Written to avoid signed arithmetic issues:
            accumulator <= accumulator
                         - (accumulator >> ALPHA_SHIFT)
                         + ({16'd0, adc_p_refl} << (16 - ALPHA_SHIFT));
        end
    end
 
    // Output is the upper 16 bits of the Q16 accumulator
    assign p_refl_filtered = accumulator[31:16];
 
endmodule
