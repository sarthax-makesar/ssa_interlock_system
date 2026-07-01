`timescale 1ns / 1ps

// Clock domain : clk_sys (~50 MHz)
// Function     : Aggregates all four synchronized trip flags into a single
//                latched rf_gate_disable_o output, and controls the PSU
//                contactor with a mandatory hold-off delay.

module interlock_aggregation_matrix (
    input  wire clk_sys,
    input  wire rst_n,
    input  wire interlock_reset_i,

    input  wire trip_fast_sync,
    input  wire trip_slow_sync,
    input  wire trip_unbalance_sync,
    input  wire trip_overdrive_sync,

    output reg  rf_gate_disable_o,
    output reg  psu_contactor_o
);

    // PSU hold-off: 50µs at 50 MHz = 2500 cycles
    // Sized to 12 bits: covers 0..4095, safe for 2500
    localparam integer N_PSU_HOLDOFF = 2500;
    localparam integer HOLDOFF_W     = 12;

    reg [HOLDOFF_W-1:0] holdoff_counter;

    // Persistent flags: PSU drops only on slow/thermal/telemetry trips,
    // not on fast transient arc (fast arc clears on interlock reset)
    reg psu_armed;

    always @(posedge clk_sys or negedge rst_n) begin
        if (!rst_n) begin
            rf_gate_disable_o <= 1'b0;
            psu_contactor_o   <= 1'b0;
            holdoff_counter   <= {HOLDOFF_W{1'b0}};
            psu_armed         <= 1'b0;
        end
        else if (interlock_reset_i) begin
            rf_gate_disable_o <= 1'b0;
            psu_contactor_o   <= 1'b0;
            holdoff_counter   <= {HOLDOFF_W{1'b0}};
            psu_armed         <= 1'b0;
        end
        else begin
            // ── Gate disable: any trip source asserts immediately ──────────
            if (trip_fast_sync | trip_slow_sync |
                trip_overdrive_sync | trip_unbalance_sync)
                rf_gate_disable_o <= 1'b1;

            // ── PSU arm flag: only on slow/telemetry trips ─────────────────
            // Fast and overdrive trips are transient; dropping the DC rail
            // for a µs-duration arc event is unnecessary and harmful.
            if (trip_slow_sync | trip_unbalance_sync)
                psu_armed <= 1'b1;

            // ── Hold-off counter: counts up once gate is disabled ──────────
            if (rf_gate_disable_o && psu_armed) begin
                if (holdoff_counter < N_PSU_HOLDOFF[HOLDOFF_W-1:0])
                    holdoff_counter <= holdoff_counter + 1'b1;
                else
                    psu_contactor_o <= 1'b1;   // FIX #6: opens only after 50µs
            end
        end
    end

endmodule