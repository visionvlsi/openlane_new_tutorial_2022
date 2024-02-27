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
<code> write_powered_verilog </code> " followed by " <code> set_netlist $::env(routing_logs)/$::env(DESIGN_NAME).powered.v </code> <br/>

write_powered_verilog -output_def -output_nl -output_pnl <br/>
       
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
  
  # Backend design
  
  https://github.com/visionvlsi/be_design_using_openlane

# Flow Configuration Variables

https://openlane.readthedocs.io/en/latest/reference/configuration.html

# PDK Configuration Variables

https://openlane.readthedocs.io/en/latest/reference/pdk_configuration.html

# Openlane commands 

https://openlane.readthedocs.io/en/latest/reference/openlane_commands.html

# Interactive Mode

https://openlane.readthedocs.io/en/latest/reference/interactive_mode.html

# Others
1. In case of -tag tagName giving an error, do the following
   <br> export OPENLANE_IMAGE_NAME=efabless/openlane:5ca48214640dcb9f88945a3861be47716ebe187d
   <br> make mount
2. To open DEF file either using magic or klayout
   from (floorplan,placement, CTS, or routing directory> magic -T sky130A.tech read_lef /tmp/merged.lef read_def filename.def &
   from (floorplan,placement, CTS, or routing directory> magic -T sky130A.tech lef read /tmp/merged.lef def read filename.def &
3. <b>NOTE</b> pdks can be found in /root/.volare/
