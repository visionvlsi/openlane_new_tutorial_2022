
set ::env(DESIGN_NAME) {fa3}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(DESIGN_IS_CORE) {1}

set ::env(FP_CORE_UTIL) 2
set ::env(FP_ASPECT_RATIO) 2
set ::env(FP_WELLTAP_CELL)
set ::env(FP_ENDCAP_CELL)
set ::env(FP_PDN_VPITCH) 7
set ::env(FP_PDN_HPITCH) 7
set ::env(FP_PDN_VOFFSET) 1
set ::env(FP_PDN_HOFFSET) 1

set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PORT) ""
set ::env(CLOCK_PERIOD) "10.0"

set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
