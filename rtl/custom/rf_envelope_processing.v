`timescale 1ns / 1ps

module rf_envelope_processing (
    input  wire         clk_fast,
    input  wire         rst_n,
    
    input  wire [15:0]  raw_adc_data_i,
    input  wire [15:0]  calib_offset_i,
    
    output reg [15:0]   conditioned_envelope_o
);

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n) begin
            conditioned_envelope_o <= 16'b0;
        end else begin
            // Calibration stage: applies a baseline compensation factor
            if (raw_adc_data_i >= calib_offset_i) begin
                conditioned_envelope_o <= raw_adc_data_i - calib_offset_i;
            end else begin
                conditioned_envelope_o <= 16'b0; // Prevent underflow clipping
            end
        end
    end

endmodule