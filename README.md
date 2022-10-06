# openlane_new_tutorial_2022



To create the design type the following cpmmand

./flow.tcl -design <design_name> -init_design_config -add_to_designs -config_file config.tcl


To launch kalyout 

XDG_SESSION_TYPE=x11 klayout


### To run openlane interactively 
<ul>
You may run the flow interactively by using the -interactive option:

./flow.tcl -interactive

A tcl shell will be opened where the openlane package is automatically sourced:

% package require openlane

Then, you should be able to run the following main commands:

Any tcl command.
prep -design <design> -tag <tag> -config <config> -init_design_config -overwrite similar to the command line arguments, design is required and the rest is optional
run_synthesis
run_floorplan
run_placement
run_cts
run_routing
write_powered_verilog followed by set_netlist $::env(routing_logs)/$::env(DESIGN_NAME).powered.v
run_magic
run_magic_spice_export
run_magic_drc
run_lvs
run_antenna_check
</ul>

## TIf the design is too small. you try appending these to your configuration file (config.tcl):
<ul>
set ::env(FP_CORE_UTIL) 5
set ::env(PL_TARGET_DENSITY) 0.5
(low utilization)

If these don't work, you may want to take a look at:
https://github.com/efabless/openlane/blob/master/regression_results/README.md
and explore different utilizations and densities.
</ul>
