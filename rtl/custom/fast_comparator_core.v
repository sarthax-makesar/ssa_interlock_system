`timescale 1ns / 1ps

module fast_comparator_core (
    input  wire        clk_fast,           // 100 MHz RF sampling clock
    input  wire        rst_n,              // Asynchronous active-low master reset
    
    input  wire [15:0] adc_p_refl,         // Raw instantaneous reflected power from ADC
    input  wire [15:0] thres_fast_150kw,   // Critical 150 kW peak reflection limit
    
    output reg         trip_fast           // Ultra-low latency trip flag
);

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n) begin
            trip_fast <= 1'b0;
        end else begin
            // Single-cycle comparison for immediate hardware protection
            if (adc_p_refl >= thres_fast_150kw) begin
                trip_fast <= 1'b1;
            end else begin
                trip_fast <= 1'b0;
            end
        end
    end

endmodule