`timescale 1ns / 1ps

module iir_rc_filter (
    input  wire         clk_fast,          // 100 MHz RF sampling clock
    input  wire         rst_n,             // Asynchronous active-low master reset
    
    input  wire [15:0]  adc_p_refl,        // Raw instantaneous reflected power
    output wire [15:0]  p_refl_filtered    // 10µs averaged output power
);

    // 16-bit integer + 10-bit fractional space = 26-bit accumulator
    reg [25:0] acc; 
    
    // Left-shift input to align with the fixed-point accumulator integer bits
    wire [25:0] ext_input = {adc_p_refl, 10'b0};

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 26'b0;
        end else begin
            // Multiplier-free IIR Formula: acc = acc + ((input - acc) >> 10)
            // Using arithmetic right shift (>>>) to preserve sign bits safely
            acc <= acc + ($signed(ext_input - acc) >>> 10);
        end
    end

    // Slice off the fractional bits to return a clean 16-bit power envelope
    assign p_refl_filtered = acc[25:10];

endmodule