# openlane_new_tutorial_2022



To create the design type the following command in the terminal<br/>

cd OpenLane<br/>
make mount<br/>
./flow.tcl -design <design_name> -init_design_config -add_to_designs -config_file config.tcl<br/>


To launch kalyout<br/> 

XDG_SESSION_TYPE=x11 klayout<br/>


### To run openlane interactively 
<p>
You may run the flow interactively by using the -interactive option:

./flow.tcl -interactive

A tcl shell will be opened where the openlane package is automatically sourced:

% package require openlane

Then, you should be able to run the following main commands:

Any tcl command.<br/>
prep -design <design> -tag <tag> -config <config> -init_design_config -overwrite<br/>
  similar to the command line arguments, design is required and the rest is optional<br/>
run_synthesis<br/>
run_floorplan<br/>
run_placement<br/>
run_cts<br/>
run_routing<br/>
write_powered_verilog followed by set_netlist $::env(routing_logs)/$::env(DESIGN_NAME).powered.v<br/>
run_magic<br/>
run_magic_spice_export<br/>
run_magic_drc<br/>
run_lvs<br/>
run_antenna_check<br/>
    </li>
</p>

## If the design is too small. you try appending these to your configuration file (config.tcl):
<p>
set ::env(FP_CORE_UTIL) 5<br/>
set ::env(PL_TARGET_DENSITY) 0.5<br/>
(low utilization)<br/>

If these don't work, you may want to take a look at:<br/>
https://github.com/efabless/openlane/blob/master/regression_results/README.md<br/>
and explore different utilizations and densities.
</p>
