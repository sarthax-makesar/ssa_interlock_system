`timescale 1ns / 1ps

// Clock domain : clk_fast (~100 MHz)
// Function     : Compares IIR-filtered reflected power against THRES_SLOW_50KW.
//                Input is p_refl_filtered from iir_rc_filter (NOT raw ADC).
//                Latches trip when filtered value exceeds threshold.
//                Clears on rst_n or interlock_reset_i.

module slow_comparator_core (
    input  wire        clk_fast,
    input  wire        rst_n,
    input  wire        interlock_reset_i,  // Manual clear 
    input  wire [15:0] p_refl_filtered,    // From iir_rc_filter — NOT raw ADC
    input  wire [15:0] thres_slow_50kw,
    output reg         trip_slow
);

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n)
            trip_slow <= 1'b0;
        else if (interlock_reset_i)
            trip_slow <= 1'b0;
        else if (p_refl_filtered > thres_slow_50kw)
            trip_slow <= 1'b1;
        // Latch holds — no decay path; reset required to clear
    end

endmodule
