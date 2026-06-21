# scripts/build_project.tcl
package require ::quartus::project

set project_name "ssa_interlock"
set target_device "10CX085YF672E6G" ;# Intel Cyclone 10 GX example device (adjust as needed)
set family "Cyclone 10 GX"

if {[project_exists $project_name]} {
    project_open $project_name -current_revision
} else {
    project_new $project_name -revision $project_name -overwrite
}

set_global_assignment -name FAMILY $family
set_global_assignment -name DEVICE $target_device
set_global_assignment -name TOP_LEVEL_ENTITY ssa_top

# ENFORCE DIALECT COMPLIANCE
set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008
set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005

# -------------------------------------------------------------------------
# Map External OHWR general-cores Components
# -------------------------------------------------------------------------
set ohwr_dir "../rtl/ohwr/modules"

set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_sync_ffs.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_pulse_synchronizer.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_glitch_filt.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_extend_pulse.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_big_adder.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_comparator.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/common/gc_fsm_watchdog.vhd"

# Vendor-Agnostic Memory Primitives
set_global_assignment -name VHDL_FILE "$ohwr_dir/genrams/genram_pkg.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/genrams/generic/generic_spram.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/genrams/generic/generic_dpram.vhd"
set_global_assignment -name VHDL_FILE "$ohwr_dir/genrams/generic/generic_async_fifo.vhd"

# -------------------------------------------------------------------------
# Map Custom Architecture Core Files
# -------------------------------------------------------------------------
set custom_dir "../rtl/custom"
set_global_assignment -name VERILOG_FILE "$custom_dir/rf_envelope_processing.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/fast_comparator_core.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/iir_rc_filter.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/slow_comparator_core.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/overdrive_protect_unit.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/module_health_monitor.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/interlock_aggregation_matrix.v"
set_global_assignment -name VERILOG_FILE "$custom_dir/ssa_top.v"

# Link Timing Constraints file
set_global_assignment -name SDC_FILE "../constraints/ssa_interlock.sdc"

export_assignments
project_close
puts "SUCCESS: Quartus Project System Generated for $target_device."