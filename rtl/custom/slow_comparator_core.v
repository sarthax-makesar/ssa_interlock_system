`timescale 1ns / 1ps

module slow_comparator_core (
    input  wire        clk_fast,           // 100 MHz RF sampling clock
    input  wire        rst_n,              // Asynchronous active-low master reset
    
    input  wire [15:0] p_refl_filtered,    // 10µs averaged reflection power from filter
    input  wire [15:0] thres_slow_50kw,    // Sustained average power safety limit
    
    output reg         trip_slow           // Thermal/Sustained overload trip flag
);

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n) begin
            trip_slow <= 1'b0;
        end else begin
            // Compares the smoothly integrated power envelope to the threshold
            if (p_refl_filtered >= thres_slow_50kw) begin
                trip_slow <= 1'b1;
            end else begin
                trip_slow <= 1'b0;
            end
        end
    end

endmodule