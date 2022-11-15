./flow.tcl -interactive -file <file>






#prep -design <design> -tag <tag> -config <config> -init_design_config -overwrite similar to the command line arguments, design is required and the rest is optional
package require openlane
set design fa1
prep -design $design -tag run1
run_synthesis
run_floorplan
run_placement
run_cts
run_routing
#write_powered_verilog followed by set_netlist $::env(routing_logs)/$::env(DESIGN_NAME).powered.v
run_magic
run_magic_spice_export
run_magic_drc
run_lvs
run_antenna_check
