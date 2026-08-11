`timescale 1ns / 1ps

// Clock domain : clk_telemetry (~10 MHz)
// Function     : Monitors all 240 module fault lines. Asserts trip_unbalance
//                when the number of simultaneously faulted modules exceeds
//                MAX_FAULT_MODULES (default 6 = 2.5% of 240 channels).

module module_health_monitor (
    input  wire         clk_telemetry,
    input  wire         rst_n,
    input  wire         interlock_reset_i,   //  manual clear added
    input  wire [239:0] module_fault_vector,
    output reg          fault_alarm_o,       // Soft alarm: ≥1 module faulted
    output reg          trip_unbalance       // Hard trip: ≥ MAX_FAULT_MODULES
);

    // ESRF spec: 2.5% of 240 modules = 6 → trip at 7th fault
    localparam integer MAX_FAULT_MODULES = 6;

    // Population count: sum all 240 fault bits
    // computed combinatorially before registering
    integer i;
    reg [7:0] fault_count;   // 8 bits: max value 240

    always @(*) begin
        fault_count = 8'd0;
        for (i = 0; i < 240; i = i + 1)
            fault_count = fault_count + {7'd0, module_fault_vector[i]};
    end

    always @(posedge clk_telemetry or negedge rst_n) begin
        if (!rst_n) begin
            fault_alarm_o  <= 1'b0;
            trip_unbalance <= 1'b0;
        end else if (interlock_reset_i) begin    // This 
            fault_alarm_o  <= 1'b0;
            trip_unbalance <= 1'b0;
        end else begin
            // Soft alarm: any single fault (used by TC4 single-module test)
            fault_alarm_o  <= (fault_count >= 8'd1) ? 1'b1 : fault_alarm_o;
            // Hard trip: exceeds redundancy threshold (latch only, no decay)
            if (fault_count > MAX_FAULT_MODULES)
                trip_unbalance <= 1'b1;
        end
    end

endmodule
