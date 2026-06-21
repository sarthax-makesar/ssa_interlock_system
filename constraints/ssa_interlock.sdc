# constraints/ssa_interlock.sdc

# Declare Primary Input Clocks based on physical interface parameters
create_clock -name clk_fast      -period 10.000 [get_ports {clk_fast_pin}]      ;# 100 MHz RF Core
create_clock -name clk_telemetry -period 100.000 [get_ports {clk_telemetry_pin}] ;# 10 MHz Monitor Bus
create_clock -name clk_sys       -period 20.000 [get_ports {clk_sys_pin}]       ;# 50 MHz AXI/Wishbone Host

# Infer PLL adjustments and uncertainties natively for the target device
derive_pll_clocks
derive_clock_uncertainty

# Isolate Asynchronous Clock Domains (Blocks out false setup/hold time violations)
set_clock_groups -asynchronous \
    -group {clk_fast} \
    -group {clk_telemetry} \
    -group {clk_sys}

# Apply false path masks to internal synchronizer chains inside OHWR blocks
set_false_path -to [get_registers {*gc_sync_ffs*|gc_sync_ffs_bba*}]
set_false_path -to [get_registers {*generic_async_fifo*|*rd_ptr*}]
set_false_path -to [get_registers {*generic_async_fifo*|*wr_ptr*}]

# Enforce sub-nanosecond path tracking constraint directly to physical RF clamp pin
set_max_delay -from [get_ports {adc_p_refl_pin[*]}] -to [get_ports {rf_gate_disable_pin}] 3.500