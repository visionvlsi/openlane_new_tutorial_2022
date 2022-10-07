# openlane_new_tutorial_2022

#### To lauch the openlane command prompt type in the terminal where the OpenLane folder is<br/>

cd OpenLane<br/>
make mount<br/>

#### To create the design type the following command in the terminal<br/>

./flow.tcl -design \<design_name\> -init_design_config -add_to_designs -config_file config.tcl<br/>

#### To run openlane interactively 


#### You may run the flow interactively by using the -interactive option:

./flow.tcl -interactive<br/>

A tcl shell will be opened where the openlane package is automatically sourced:<br/>

Then type the follwoing<br/>

% package require openlane<br/>

Then, you should be able to run the following main commands:<br/>

Any tcl command.<br/>

prep -design \<design\> -tag \<tag\> -config \<config\> -init_design_config -overwrite<br/>

  
similar to the command line arguments, design is required and the rest is optional<br/>
  
run_synthesis<br/>
run_floorplan<br/>
run_placement<br/>
run_cts<br/>
run_routing<br/>
write_powered_verilog followed by set_netlist $\::env\(routing_logs\)\/\$\::env\(DESIGN_NAME\).powered.v
run_magic<br/>
run_magic_spice_export<br/>
run_magic_drc<br/>
run_lvs<br/>
run_antenna_check<br/>

#### The above commands can also be written in a file and passed to flow.tcl:

./flow.tcl -interactive -file \<file\>

#### If the design is too small. you try appending these to your configuration file (config.tcl):

set ::env(FP_CORE_UTIL) 5<br/>
set ::env(PL_TARGET_DENSITY) 0.5<br/>
(low utilization)<br/>

#### If these don't work, you may want to take a look at:<br/>
https://github.com/efabless/openlane/blob/master/regression_results/README.md<br/>
and explore different utilizations and densities.<br/>

  
#### To launch kalyout<br/> 

XDG_SESSION_TYPE=x11 klayout<br/>
  
#### Updating OpenLane<br/>
If you already have the repo locally, then there is no need to re-clone it. You can run the following:<br/>

  cd OpenLane/<br/>
  git checkout master<br/>
  git pull<br/>
  make<br/>
  make test # This is to test that the flow and the pdk were properly updated<br/>
