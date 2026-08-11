`timescale 1ns / 1ps

module lost_drive_watchdog (
    input  wire        clk_fast,               // 100 MHz clock source
    input  wire        rst_n,                  // Asynchronous active-low reset
    input  wire        interlock_reset_i,      // Operator master reset / re-arm
    input  wire [15:0] adc_p_drive_pin,        // 16-bit parallel Drive ADC data
    input  wire        rf_gate_disable_i,      // Current state of the RF gate inhibit
    output wire        lost_drive_trip_o       // Latched interlock output to RF deck
);

   
    // Design Parameter Configuration
    
    localparam [15:0] THRES_DRIVE_MIN = 16'h0B33; //  Drive floor limit
    localparam integer WDT_TIMEOUT    = 50000;   // 50,000 cycles = 500us timeout

    // Internal routing wires for the VHDL component
    wire wdt_rst_conditioned;
    wire wdt_fsm_rst_pulse;
    
    // Output safety latch register
    reg lost_drive_trip_latch;

    //  Watchdog Kick (Reset) Conditioning Logic
    // The internal timer is held at 0 (kicked) if:
    //   The operator applies a manual interlock reset (Rule 4) OR
    //   The forward drive power is above the minimum safe floor (Rule 1) OR
    //   The RF gate is already disabled (Rule 2: Prevents false trips during off-state)
    assign wdt_rst_conditioned = interlock_reset_i || 
                                 (adc_p_drive_pin >= THRES_DRIVE_MIN) || 
                                 rf_gate_disable_i;

    // VHDL Component Instantiation (From gc_fsm_watchdog.vhd)
    gc_fsm_watchdog #(
        .g_wdt_max(WDT_TIMEOUT)                   // Set timeout limit to 50,000 cycles
    ) U_CORE_TIMER (
        .clk_i     (clk_fast),                    // Connect to 100 MHz clock
        .rst_n_i   (rst_n),                       // Connect system async reset
        .wdt_rst_i (wdt_rst_conditioned),         // Hook up our conditioned kick logic
        .fsm_rst_o (wdt_fsm_rst_pulse)            // 1-cycle raw strobe output
    );
   
    //  Output Catching & Re-arming Latch Matrix
    
    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n) begin
            lost_drive_trip_latch <= 1'b0;
        end 
        // Master interlock reset clears the output latch to re-arm the system
        else if (interlock_reset_i) begin
            lost_drive_trip_latch <= 1'b0;
        end 
        // Catch the 1-clock-cycle pulse from the VHDL timer and latch it permanently
        else if (wdt_fsm_rst_pulse) begin
            lost_drive_trip_latch <= 1'b1;
        end
    end

    // Drive final structural pin output
    assign lost_drive_trip_o = lost_drive_trip_latch;

endmodule
