module ssa_top (
    // Physical Clock Inputs
    input  wire         clk_fast_pin,       // ~100 MHz RF ADC sample clock
    input  wire         clk_telemetry_pin,  // ~10 MHz Telemetry bus clock
    input  wire         clk_sys_pin,        // ~50 MHz SoC/Host interface clock
    input  wire         rst_n_pin,          // Asynchronous active-low master reset
    input  wire         interlock_reset_pin,// Manual hardware override reset

    // High-Speed RF ADC Parallel Interfaces (16-bit)
    input  wire [15:0]  adc_p_refl_pin,     // Instantaneous reflected power
    input  wire [15:0]  adc_p_drive_pin,    // Instantaneous forward drive power

    // Slow Telemetry Array From Transistor Pallets
    input  wire [239:0] module_fault_vector_pin, // 240 LDMOS status lines

    // Physical Safety Actuator Driver Outputs
    output wire         rf_gate_disable_pin, // Low-latency LVDS RF blank clamp
    output wire         psu_contactor_pin    // Relay to drop main DC rail
);

    //  Threshold constants 
    // THRES_FAST_150KW = 0xD000: ~81% ADC full scale → ~150kW reflected
    // THRES_SLOW_50KW  = 0x4500: ~27% ADC full scale → ~50kW sustained average
    // THRES_OVERDRIVE  = 0xB000: ~69% ADC full scale → below BLF578 P1 point
    localparam [15:0] THRES_FAST_150KW = 16'hD000;
    localparam [15:0] THRES_SLOW_50KW  = 16'h4500;
    localparam [15:0] THRES_OVERDRIVE  = 16'hB000;
	 
	 localparam [15:0] THRES_DRIVE_MIN  = 16'h0B33;
    localparam [31:0] G_WDT_MAX        = 32'd50000;

    // Internal wires (clk_fast domain, pre-CDC) 
    wire        trip_fast_raw;
    wire        trip_slow_raw;
    wire        trip_overdrive_raw;
    wire        trip_unbalance_raw;
    wire [15:0] p_refl_filtered_wire;
	 wire        lost_drive_trip_raw;
    //  Synchronized wires (clk_sys domain, post-CDC) 
    wire        trip_fast_sync;
    wire        trip_slow_sync;
    wire        trip_overdrive_sync;
    wire        trip_unbalance_sync;

    //  Intermediate wire from central brain 
    wire        rf_gate_disable_brain;

    // Registered fast-bypass output 
    // Replaces combinatorial assign to prevent power-up glitch on LVDS clamp.
    // Adds exactly 1 clk_fast cycle (10ns) to fast path — acceptable given
    // BLF578 circulator load absorbs transients for >> 1 RF cycle.
    reg         rf_gate_disable_reg;

    always @(posedge clk_fast_pin or negedge rst_n_pin) begin
        if (!rst_n_pin)
            rf_gate_disable_reg <= 1'b0;
        else
            rf_gate_disable_reg <= trip_fast_raw
                                 | trip_overdrive_raw
                                 | rf_gate_disable_brain;
    end

    assign rf_gate_disable_pin = rf_gate_disable_reg;

    //  CORE ENGINES  (100 MHz clk_fast domain)

    // Instantaneous reflected power monitor
    fast_comparator_core u_fast_comp (
        .clk_fast          (clk_fast_pin),
        .rst_n             (rst_n_pin),
        .interlock_reset_i (interlock_reset_pin),  
        .adc_p_refl        (adc_p_refl_pin),
        .thres_fast_150kw  (THRES_FAST_150KW),
        .trip_fast         (trip_fast_raw)
    );

    // 10µs RC moving average filter
    iir_rc_filter u_filter (
        .clk_fast          (clk_fast_pin),
        .rst_n             (rst_n_pin),
        .force_clear_i     (interlock_reset_pin),  
        .adc_p_refl        (adc_p_refl_pin),
        .p_refl_filtered   (p_refl_filtered_wire)
    );

    // Sustained average reflected power monitor
    slow_comparator_core u_slow_comp (
        .clk_fast          (clk_fast_pin),
        .rst_n             (rst_n_pin),
        .interlock_reset_i (interlock_reset_pin),  
        .p_refl_filtered   (p_refl_filtered_wire),
        .thres_slow_50kw   (THRES_SLOW_50KW),
        .trip_slow         (trip_slow_raw)
    );

    // RF input overdrive monitor
    overdrive_protect_unit u_overdrive_comp (
        .clk_fast          (clk_fast_pin),
        .rst_n             (rst_n_pin),
        .interlock_reset_i (interlock_reset_pin),  
        .adc_p_drive       (adc_p_drive_pin),
        .thres_overdrive   (THRES_OVERDRIVE),
        .trip_overdrive    (trip_overdrive_raw)
    );
	 
	 lost_drive_watchdog u_lost_drive_watchdog (
        .clk_fast          (clk_fast_pin),          // 100 MHz domain mapping
        .rst_n             (rst_n_pin),
        .interlock_reset_i (interlock_reset_pin),   
        .adc_p_drive_pin   (adc_p_drive_pin),       
        //  Inhibit if an alternative active trip has already claimed the gate
        .rf_gate_disable_i (trip_fast_raw | trip_overdrive_raw | rf_gate_disable_brain), 
        .lost_drive_trip_o (lost_drive_trip_raw)   // Rule 3 (Latched Output)
    );

    // 2. TELEMETRY ENGINE  (10 MHz clk_telemetry domain)

    // 240-channel LDMOS pallet structural health matrix
    // external alarm bus or status register connection in future revision.
    module_health_monitor u_health_mon (
        .clk_telemetry      (clk_telemetry_pin),
        .rst_n              (rst_n_pin),
        .interlock_reset_i  (interlock_reset_pin), // FIX #2
        .module_fault_vector(module_fault_vector_pin),
        .fault_alarm_o      (),                    // Soft alarm — unconnected (open)
        .trip_unbalance     (trip_unbalance_raw)
    );

    // CROSS-CLOCK DOMAIN SYNCHRONIZATION  (→ 50 MHz clk_sys domain)
    // gc_sync_ffs.v Verilog behavioral wrapper replaces missing
    //OHWR VHDL entity. Port signature matches VHDL original exactly.
    // npulse_o and ppulse_o left open (unused at this level).
     

    gc_sync_ffs u_sync_fast (
        .clk_i    (clk_sys_pin),
        .rst_n_i  (rst_n_pin),
        .data_i   (trip_fast_raw),
        .synced_o (trip_fast_sync),
        .npulse_o (),
        .ppulse_o ()
    );

    gc_sync_ffs u_sync_slow (
        .clk_i    (clk_sys_pin),
        .rst_n_i  (rst_n_pin),
        .data_i   (trip_slow_raw),
        .synced_o (trip_slow_sync),
        .npulse_o (),
        .ppulse_o ()
    );

    gc_sync_ffs u_sync_overdrive (
        .clk_i    (clk_sys_pin),
        .rst_n_i  (rst_n_pin),
        .data_i   (trip_overdrive_raw),
        .synced_o (trip_overdrive_sync),
        .npulse_o (),
        .ppulse_o ()
    );

    gc_sync_ffs u_sync_unbalance (
        .clk_i    (clk_sys_pin),
        .rst_n_i  (rst_n_pin),
        .data_i   (trip_unbalance_raw),
        .synced_o (trip_unbalance_sync),
        .npulse_o (),
        .ppulse_o ()
    );

    /// CENTRALIZED INTERLOCK MATRIX  (50 MHz clk_sys domain)
          

    interlock_aggregation_matrix u_central_brain (
        .clk_sys             (clk_sys_pin),
        .rst_n               (rst_n_pin),
        .interlock_reset_i   (interlock_reset_pin),

        .trip_fast_sync      (trip_fast_sync),
        .trip_slow_sync      (trip_slow_sync),
        .trip_unbalance_sync (trip_unbalance_sync),
        .trip_overdrive_sync (trip_overdrive_sync),

        .rf_gate_disable_o   (rf_gate_disable_brain),
        .psu_contactor_o     (psu_contactor_pin)
    );

endmodule
