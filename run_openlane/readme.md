./flow.tcl -design \<design_name\> -init_design_config -add_to_designs -config_file config.tcl

./flow.tcl -interactive -file \<file\>


<ul>
#prep -design <design> -tag <tag> -config <config> -init_design_config -overwrite similar to the command line arguments, design is required and the rest is optional<br/>
package require openlane<br/>
set design fa1<br/>
prep -design $design -tag run1<br/>
run_synthesis<br/>
run_floorplan<br/>
run_placement<br/>
run_cts<br/>
run_routing<br/>
#write_powered_verilog followed by set_netlist $::env(routing_logs)/$::env(DESIGN_NAME).powered.v<br/>
run_magic<br/>
run_magic_spice_export<br/>
run_magic_drc<br/>
run_lvs<br/>
run_antenna_check</ul><br/>
