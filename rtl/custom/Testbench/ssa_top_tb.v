`timescale 1ns / 1ps

module ssa_top_tb;
 
    // 1. PARAMETERS
    // Clock periods
    localparam real T_FAST      = 10.0;   // 100 MHz
    localparam real T_SYS       = 20.0;   //  50 MHz
    localparam real T_TELEMETRY = 100.0;  //  10 MHz
 
    // IIR filter time constant at 100 MHz:
    //   ALPHA_SHIFT=13 -> tau = 2^13 / 100MHz = 81.92 us = 8192 clk_fast cycles
    //
    // TC3: filter output crosses THRES_SLOW_50KW=0x4500 while input=0x5200.
    //   Crossing time t = -tau * ln(1 - 0x4500/0x5200) approx 150.8 us.
    //   At 50 MHz clk_sys: 150.8us / 20ns = 7540 cycles. +20% margin = 9050.
    //
    // TC5: conditioning pulse = 20 us, input = 0x8500.
    //   Filter output after 20us = 0x8500*(1-e^(-20/81.92)) approx 0x1209
    //   0x1209 < THRES_SLOW = 0x4500  ->  NO TRIP during conditioning.
    localparam integer N_INTEG_CYCLES   = 9050;
 
    // PSU hold-off from interlock_aggregation_matrix: 2500 clk_sys × 20ns = 50µs
    // Add 10% margin → 2750 clk_sys cycles = 55µs
    localparam integer N_PSU_HOLDOFF_TB = 2750;
 
    // Interlock reset pulse: 8 clk_sys cycles minimum (covers 2-FF CDC depth + margin)
    localparam integer RESET_HOLD_CYCLES = 8;
 
    // ADC threshold values (must match ssa_top localparam)
    localparam [15:0] THRES_FAST_150KW = 16'hD000;
    localparam [15:0] THRES_SLOW_50KW  = 16'h4500;
    localparam [15:0] THRES_OVERDRIVE  = 16'hB000;
 
    // Stimulus values
    localparam [15:0] ADC_NORMAL_REFL   = 16'h1200; // TC1: low return loss
    localparam [15:0] ADC_NORMAL_DRIVE  = 16'h7000; // TC1/TC2/TC3: normal drive
    localparam [15:0] ADC_ARC_REFL      = 16'hE200; // TC2: above THRES_FAST_150KW
    localparam [15:0] ADC_SLOW_REFL     = 16'h5200; // TC3: above THRES_SLOW_50KW
    localparam [15:0] ADC_COND_REFL     = 16'h8500; // TC5: above slow, below fast
    localparam [15:0] ADC_OVERDRIVE     = 16'hC000; // TC7: above THRES_OVERDRIVE
 
    
    // 2. SIGNAL DECLARATIONS
    
    reg          clk_fast_pin;
    reg          clk_telemetry_pin;
    reg          clk_sys_pin;
    reg          rst_n_pin;
    reg          interlock_reset_pin;
 
    reg  [15:0]  adc_p_refl_pin;
    reg  [15:0]  adc_p_drive_pin;
    reg  [239:0] module_fault_vector_pin;
 
    wire         rf_gate_disable_pin;
    wire         psu_contactor_pin;
    wire         lost_drive_trip_raw;
    
    // Timestamp capture registers (FIX #5 — new signals visible in waveform)
    integer      rf_gate_trip_time;
    integer      psu_trip_time;
    integer      delta_trip_time;
 
    
    // 3. UUT INSTANTIATION
    
    ssa_top uut (
        .clk_fast_pin            (clk_fast_pin),
        .clk_telemetry_pin       (clk_telemetry_pin),
        .clk_sys_pin             (clk_sys_pin),
        .rst_n_pin               (rst_n_pin),
        .interlock_reset_pin     (interlock_reset_pin),
        .adc_p_refl_pin          (adc_p_refl_pin),
        .adc_p_drive_pin         (adc_p_drive_pin),
        .module_fault_vector_pin (module_fault_vector_pin),
        .rf_gate_disable_pin     (rf_gate_disable_pin),
        .psu_contactor_pin       (psu_contactor_pin)
    );
    
    // 4. CLOCK GENERATORS
    initial clk_fast_pin      = 1'b0;
    always  #(T_FAST      / 2.0) clk_fast_pin      = ~clk_fast_pin;
 
    initial clk_sys_pin       = 1'b0;
    always  #(T_SYS       / 2.0) clk_sys_pin       = ~clk_sys_pin;
 
    initial clk_telemetry_pin = 1'b0;
    always  #(T_TELEMETRY / 2.0) clk_telemetry_pin = ~clk_telemetry_pin;
 
    // 5. WAVEFORM DUMP  
    initial begin
        $dumpfile("ssa_top_tb.vcd");
        $dumpvars(0, ssa_top_tb);
    end
 
    // =========================================================================
    // 6. OUTPUT-ONLY CHANGE MONITOR  (FIX #6 — replaces noisy $monitor)
    // =========================================================================
    initial begin
        rf_gate_trip_time = 0;
        psu_trip_time     = 0;
        delta_trip_time   = 0;
        forever begin
            @(rf_gate_disable_pin or psu_contactor_pin);
            $display("[OUTPUT_CHANGE] t=%0t ns | rf_gate_disable=%b | psu_contactor=%b | refl_adc=0x%h",
                     $time, rf_gate_disable_pin, psu_contactor_pin, adc_p_refl_pin);
            // Capture first assertion timestamps
            if (rf_gate_disable_pin === 1'b1 && rf_gate_trip_time === 0)
                rf_gate_trip_time = $time;
            if (psu_contactor_pin === 1'b1 && psu_trip_time === 0) begin
                psu_trip_time   = $time;
                delta_trip_time = psu_trip_time - rf_gate_trip_time;
                $display("[TIMING] rf_gate asserted at %0t ns | psu_contactor at %0t ns | delta = %0t ns",
                         rf_gate_trip_time, psu_trip_time, delta_trip_time);
            end
        end
    end
 
    
    // 7. TASK: ISSUE INTERLOCK RESET  (FIX #4)
    //    Parameterised pulse, aligned to clk_sys, verifies clearance before
    //    returning. Halts simulation if reset silently fails.
    
    task automatic issue_interlock_reset;
        integer k;
        begin
            @(posedge clk_sys_pin);
            interlock_reset_pin = 1'b1;
            repeat (RESET_HOLD_CYCLES) @(posedge clk_sys_pin);
            interlock_reset_pin = 1'b0;
            // Allow CDC synchronizers to propagate the clear
            repeat (4) @(posedge clk_sys_pin);
            #1; // Settle combinatorial
            if (rf_gate_disable_pin !== 1'b0 || psu_contactor_pin !== 1'b0) begin
                $display("[ERROR] Interlock reset FAILED to clear outputs at t=%0t ns. Halting.", $time);
                $finish;
            end else begin
                $display("[SYS_STATUS] Interlock latches confirmed cleared. t=%0t ns", $time);
            end
            // Reset per-test timestamp capture
            rf_gate_trip_time = 0;
            psu_trip_time     = 0;
            delta_trip_time   = 0;
        end
    endtask
 
    
    // 8. MAIN STIMULUS

    integer cycle_count;
 
    initial begin
        $display("[TB START] 150kW SSA Interlock Verification — BLF578 LDMOS Array");
        $display("[TB INFO ] THRES_FAST=0x%h  THRES_SLOW=0x%h  THRES_OD=0x%h",
                 THRES_FAST_150KW, THRES_SLOW_50KW, THRES_OVERDRIVE);
 
        // Power-on initialisation 
        rst_n_pin               = 1'b0;
        interlock_reset_pin     = 1'b0;
        adc_p_refl_pin          = 16'h0000;
        adc_p_drive_pin         = 16'h0000;
        module_fault_vector_pin = 240'd0;
 
        #100;
        @(posedge clk_sys_pin);
        rst_n_pin = 1'b1;
        $display("[SYS_STATUS] Master reset de-asserted at t=%0t ns", $time);
        repeat(5) @(posedge clk_sys_pin);
 
        // Initial safety-latch clear
        issue_interlock_reset;
        $display("[SYS_STATUS] Power-on safety latch cleared.");

        // TC1: NORMAL PULSED RF OPERATION
        // BLF578 spec: 100µs pulse, 20% duty cycle, low VSWR
        // Expect: no trip throughout
     
        $display("\n[TC1] Normal pulsed RF — 100us pulse, 20%% duty, low VSWR");
 
        @(posedge clk_fast_pin);
        adc_p_refl_pin  = ADC_NORMAL_REFL;   // 0x1200 — well below all thresholds
        adc_p_drive_pin = ADC_NORMAL_DRIVE;   // 0x7000 — normal drive
        $display("[TC1] RF pulse on. refl=0x%h drive=0x%h", adc_p_refl_pin, adc_p_drive_pin);
 
        #100_000; // 100 µs pulse active
 
        @(posedge clk_fast_pin);
        adc_p_refl_pin  = 16'h0000;
        adc_p_drive_pin = 16'h0000;
 
        #400_000; // 400 µs off-time (20% duty cycle)
 
        if (rf_gate_disable_pin === 1'b0 && psu_contactor_pin === 1'b0)
            $display("[PASS] TC1: No false trip during normal pulsed operation.");
        else
            $display("[FAIL] TC1: False interlock trip during baseline operation!");
 
        // TC2: CATASTROPHIC COAXIAL ARC (Fast Bypass Path)
        // BLF578 spec: VSWR 13:1 survivability — beyond this is arc territory
        // Expect: rf_gate_disable asserts within 1 clk_fast cycle (~10ns)
        //         psu_contactor must NOT assert (fast arc = gate only, no PSU drop)
        $display("\n[TC2] Catastrophic coaxial arc — fast interlock path");
 
        @(posedge clk_fast_pin);
        adc_p_refl_pin  = ADC_NORMAL_REFL;   // Start healthy
        adc_p_drive_pin = ADC_NORMAL_DRIVE;
 
        #10_000; // 10 µs into pulse, then arc strikes
 
        @(posedge clk_fast_pin);
        adc_p_refl_pin = ADC_ARC_REFL;       // 0xE200 — above THRES_FAST_150KW=0xD000
        $display("[TC2] Arc fault injected: refl=0x%h at t=%0t ns", adc_p_refl_pin, $time);
 
        // Wait one full clk_fast cycle for registered comparator to latch,
        //         then one more for the registered bypass OR output to update.
        // Total latency = 2 × T_FAST = 20ns (was checking #1 delta — raced itself)
        @(posedge clk_fast_pin); // fast_comparator_core latches trip_fast_raw
        @(posedge clk_fast_pin); // rf_gate_disable_reg captures trip_fast_raw | ...
        #1; // Combinatorial settle
 
        if (rf_gate_disable_pin === 1'b1)
            $display("[PASS] TC2: rf_gate_disable asserted within 2 clk_fast cycles (~20ns). t=%0t ns", $time);
        else
            $display("[FAIL] TC2: rf_gate_disable NOT asserted after 2 clk_fast cycles!");
 
        // Fast arcs do NOT drop the PSU — verify hold-off policy
        #200; // Short wait — well under N_PSU_HOLDOFF
        if (psu_contactor_pin === 1'b0)
            $display("[PASS] TC2: psu_contactor correctly NOT asserted for fast arc (gate-only trip).");
        else
            $display("[FAIL] TC2: psu_contactor opened on fast arc — should be gate-only!");
 
        // Verify latch holds after stimulus removed
        @(posedge clk_fast_pin);
        adc_p_refl_pin  = 16'h0000;
        adc_p_drive_pin = 16'h0000;
        #200;
 
        if (rf_gate_disable_pin === 1'b1)
            $display("[PASS] TC2: Interlock latch holds after stimulus removal.");
        else
            $display("[FAIL] TC2: Interlock did not latch — self-reset on stimulus removal!");
 
        issue_interlock_reset;
 
        
        // TC3: SUSTAINED THERMAL DRIFT (IIR Slow Path + PSU Hold-off)
        // ESRF spec: 50kW sustained reflection trips slow interlock
        // Expect: rf_gate after N_INTEG_CYCLES, psu after additional 50µs hold-off
        //         delta_trip_time must be >= 50µs (N_PSU_HOLDOFF × T_SYS)
        $display("\n[TC3] Sustained thermal drift — slow IIR path + PSU hold-off");
        $display("[TC3] Injecting refl=0x%h (above THRES_SLOW=0x%h). Waiting %0d clk_sys cycles (~180us, IIR tau=82us)...",
                 ADC_SLOW_REFL, THRES_SLOW_50KW, N_INTEG_CYCLES);
 
        @(posedge clk_fast_pin);
        adc_p_refl_pin = ADC_SLOW_REFL;    // 0x5200 — above THRES_SLOW_50KW=0x4500
        adc_p_drive_pin = ADC_NORMAL_DRIVE;
 
        // Wait for IIR integrator to saturate and slow_comparator to trip
        // expressed as clk_sys cycle count, not magic #25000
        repeat (N_INTEG_CYCLES) @(posedge clk_sys_pin);
 
        if (rf_gate_disable_pin === 1'b1)
            $display("[PASS] TC3: RF gate asserted after IIR integration. t=%0t ns", $time);
        else
            $display("[FAIL] TC3: RF gate NOT asserted after %0d clk_sys cycles!", N_INTEG_CYCLES);
 
        // PSU checked SEPARATELY after hold-off, not simultaneously
        // Now wait for the 50µs PSU contactor hold-off to expire
        $display("[TC3] Waiting %0d clk_sys cycles for PSU hold-off (~%0d µs)...",
                 N_PSU_HOLDOFF_TB, (N_PSU_HOLDOFF_TB * 20) / 1000);
        repeat (N_PSU_HOLDOFF_TB) @(posedge clk_sys_pin);
 
        if (psu_contactor_pin === 1'b1)
            $display("[PASS] TC3: PSU contactor opened after hold-off delay. t=%0t ns", $time);
        else
            $display("[FAIL] TC3: PSU contactor did NOT open after hold-off!");
 
        // Verify hold-off timing was respected
        if (delta_trip_time >= 50_000) // 50µs = 50,000 ns
            $display("[PASS] TC3: delta_trip_time=%0t ns >= 50000 ns. Hold-off verified.", delta_trip_time);
        else
            $display("[FAIL] TC3: delta_trip_time=%0t ns < 50000 ns. Hold-off too short!", delta_trip_time);
 
        adc_p_refl_pin  = 16'h0000;
        adc_p_drive_pin = 16'h0000;
        issue_interlock_reset;

        // TC4: LDMOS PALLET CASCADE FAILURE (Telemetry Matrix)
        // TC4a: Single module fault → alarm only (no trip)
        // TC4b: 7 modules fault → trip (exceeds 6-module redundancy threshold)
        // TC4c: Boundary modules [0] and
        $display("\n[TC4a] Single module fault — expect alarm only, no trip");
 
        @(posedge clk_telemetry_pin);
        module_fault_vector_pin[87] = 1'b1;
        $display("[TC4a] module_fault_vector[87] asserted.");
 
        repeat(4) @(posedge clk_telemetry_pin);
        repeat(4) @(posedge clk_sys_pin);
        #1;
 
        // Single fault: should be alarm (fault_alarm_o inside UUT) but NOT trip
        if (psu_contactor_pin === 1'b0 && rf_gate_disable_pin === 1'b0)
            $display("[PASS] TC4a: Single module fault did not trip SSA (below redundancy threshold).");
        else
            $display("[FAIL] TC4a: SSA tripped on single module fault — should alarm only!");
 
        // Now assert 6 additional faults (total = 7, exceeds MAX_FAULT_MODULES=6)
        $display("\n[TC4b] 7 simultaneous module faults — expect trip");
        module_fault_vector_pin[10]  = 1'b1;
        module_fault_vector_pin[20]  = 1'b1;
        module_fault_vector_pin[50]  = 1'b1;
        module_fault_vector_pin[100] = 1'b1;
        module_fault_vector_pin[150] = 1'b1;
        module_fault_vector_pin[200] = 1'b1;
        // Total = 7 faults (bit87 + 6 new)
 
        repeat(4) @(posedge clk_telemetry_pin);
        repeat(4) @(posedge clk_sys_pin);
        #1;
 
        if (rf_gate_disable_pin === 1'b1)
            $display("[PASS] TC4b: rf_gate_disable asserted at 7 module faults.");
        else
            $display("[FAIL] TC4b: rf_gate_disable NOT asserted at 7 module faults!");
 
        // Boundary module test
        $display("\n[TC4c] Boundary modules [0] and [239]");
        module_fault_vector_pin = 240'd0;
        repeat(2) @(posedge clk_telemetry_pin);
        issue_interlock_reset;
 
        @(posedge clk_telemetry_pin);
        module_fault_vector_pin[0]   = 1'b1;
        module_fault_vector_pin[239] = 1'b1;
        repeat(4) @(posedge clk_telemetry_pin);
        repeat(4) @(posedge clk_sys_pin);
        #1;
        if (psu_contactor_pin === 1'b0)
            $display("[PASS] TC4c: Boundary faults [0][239] (count=2) did not trip PSU.");
        else
            $display("[FAIL] TC4c: Boundary faults incorrectly tripped PSU!");
 
        module_fault_vector_pin = 240'd0;
        issue_interlock_reset;
 
        // TC5: CAVITY CONDITIONING TRANSIENT
        // ESRF spec: 20µs pulse, reflected power spikes to ~2× incident during
        // cavity filling (6.1µs). Filtered interlock must NOT trip. Fast
        // interlock must NOT trip (0x8500 < THRES_FAST_150KW=0xD000).
        
        $display("\n[TC5] Cavity conditioning transient — 20us pulse, sub-fast-threshold spike");
        $display("[TC5] refl=0x%h: above THRES_SLOW=0x%h, below THRES_FAST=0x%h (IIR tau=82us, pulse=20us => no trip)",
                 ADC_COND_REFL, THRES_SLOW_50KW, THRES_FAST_150KW);
 
        @(posedge clk_fast_pin);
        adc_p_refl_pin  = ADC_COND_REFL;    // 0x8500 — above slow, below fast
        adc_p_drive_pin = ADC_NORMAL_DRIVE;
 
        #20_000; // 20 µs conditioning pulse duration
 
        // Fast interlock must NOT have fired (0x8500 < 0xD000)
        if (rf_gate_disable_pin === 1'b0)
            $display("[PASS] TC5: Fast interlock correctly held off during 20us conditioning pulse.");
        else
            $display("[FAIL] TC5: Fast interlock falsely tripped during cavity conditioning!");
 
        // Slow IIR also must NOT have tripped in 20µs (tau = 10µs; 20µs < 4×tau for saturation)
        // The filter output after 20µs of 0x8500 input is still rising — not yet at threshold
        if (psu_contactor_pin === 1'b0)
            $display("[PASS] TC5: Slow/PSU interlock correctly held off during short conditioning burst.");
        else
            $display("[FAIL] TC5: Slow interlock falsely tripped during 20us conditioning pulse!");
 
        adc_p_refl_pin  = 16'h0000;
        adc_p_drive_pin = 16'h0000;
        // Drain IIR (force_clear fires on next reset)
        issue_interlock_reset;

        // TC6: RF INPUT OVERDRIVE PROTECTION
        // BLF578 spec: must not exceed P1 compression point
        // THRES_OVERDRIVE = 0xB000; inject 0xC000 > 0xB000
        // Expect: rf_gate_disable from fast bypass (trip_overdrive_raw)
        //         psu_contactor must NOT assert (overdrive = gate only)
        $display("\n[TC6] RF input overdrive — forward drive exceeds P1 compression threshold");
 
        @(posedge clk_fast_pin);
        adc_p_drive_pin = ADC_OVERDRIVE;     // 0xC000 — above THRES_OVERDRIVE=0xB000
        adc_p_refl_pin  = ADC_NORMAL_REFL;   // Reflection is normal
        $display("[TC6] drive=0x%h injected at t=%0t ns", adc_p_drive_pin, $time);
 
        @(posedge clk_fast_pin); // overdrive_protect_unit latches trip_overdrive_raw
        @(posedge clk_fast_pin); // rf_gate_disable_reg captures it
        #1;
 
        if (rf_gate_disable_pin === 1'b1)
            $display("[PASS] TC6: rf_gate_disable asserted on overdrive within 2 clk_fast cycles.");
        else
            $display("[FAIL] TC6: rf_gate_disable NOT asserted on overdrive!");
 
        #200;
        if (psu_contactor_pin === 1'b0)
            $display("[PASS] TC6: psu_contactor correctly NOT asserted for overdrive (gate-only).");
        else
            $display("[FAIL] TC6: psu_contactor opened on overdrive — should be gate-only!");
 
        adc_p_drive_pin = 16'h0000;
        adc_p_refl_pin  = 16'h0000;
        issue_interlock_reset;

        // TC7: DRIVE CHAIN FAILURE (Pre-amplifier Watchdog Validation)
        // ESRF paper: "if one of the RF power modules used in the drive chain
        // fails, the output power can no longer be maintained..."
        // Modelled as: drive ADC drops completely to zero while reflected stays low.
        // Expect: The newly integrated lost_drive_watchdog must trip and drop
        //         rf_gate_disable_pin after exactly 500 us (50,000 fast cycles).
        //         The PSU contactor must stay online (gate-only protection).

        $display("\n[TC7] Drive chain failure — forward power loss with normal reflected");
 
        @(posedge clk_fast_pin);
        adc_p_drive_pin = ADC_NORMAL_DRIVE;
        adc_p_refl_pin  = ADC_NORMAL_REFL;
        #5_000;
 
        // Simulate pre-amp module drop offline
        @(posedge clk_fast_pin);
        adc_p_drive_pin = 16'h0000; // Drops far below minimum active floor (0x0B33)
        adc_p_refl_pin  = ADC_NORMAL_REFL;
        $display("[TC7] Drive chain failure injected: drive=0x0000 at t=%0t ns", $time);
 
        //  Verify watchdog does NOT trip prematurely before the timeout
        #490_000; // Wait 490 us (just under the 500 us threshold window)
        #1;
        if (rf_gate_disable_pin === 1'b0)
            $display("[PASS] TC7: Watchdog did not trip prematurely at 490 us.");
        else
            $display("[FAIL] TC7: Watchdog tripped too early before its 500 us delay window!");
            
        //  Cross the 500 us boundary line and verify immediate blanking 
        $display("[TC7] Advancing past 500 us boundary to allow watchdog to mature...");
        #15_000; // Crosses 500 us mark (cumulative 505 us of total loss)
        #1;      // Settle combinatorial registers
 
        if (rf_gate_disable_pin === 1'b1)
            $display("[PASS] TC7: Watchdog successfully asserted rf_gate_disable_pin after 500 us forward loss.");
        else
            $display("[FAIL] TC7: Watchdog FAILED to latch rf_gate_disable_pin high after timeout!");
 
        //  Verify the PSU safety relay remains closed 
        if (psu_contactor_pin === 1'b0)
            $display("[PASS] TC7: PSU contactor remained safely online (gate-only protective trip).");
        else
            $display("[FAIL] TC7: PSU contactor was incorrectly dropped by the watchdog!");
 
        adc_p_drive_pin = 16'h0000;
        adc_p_refl_pin  = 16'h0000;
        issue_interlock_reset;
 
        
        // END
        #1000;
        $display("\n[TB END] 150kW SSA Interlock Suite — All test cases complete.");
        $finish;
    end
 
endmodule
