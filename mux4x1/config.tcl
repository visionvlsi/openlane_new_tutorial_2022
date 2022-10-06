
set ::env(DESIGN_NAME) {mux4x1}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PORT) ""
set ::env(CLOCK_PERIOD) "10.0"
set ::env(FP_CORE_UTIL) 2
set ::env(PL_TARGET_DENSITY) 0.7
set ::env(DESIGN_IS_CORE) {1}


set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
