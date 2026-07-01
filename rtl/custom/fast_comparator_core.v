`timescale 1ns / 1ps

module fast_comparator_core (
    input  wire        clk_fast,
    input  wire        rst_n,
    input  wire        interlock_reset_i,  // FIX #1: manual clear added
    input  wire [15:0] adc_p_refl,
    input  wire [15:0] thres_fast_150kw,
    output reg         trip_fast
);

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n)
            trip_fast <= 1'b0;
        else if (interlock_reset_i)       // Synchronous manual clear
            trip_fast <= 1'b0;
        else if (adc_p_refl > thres_fast_150kw)
            trip_fast <= 1'b1;
        // No else — latch holds until explicit clear
    end

endmodule