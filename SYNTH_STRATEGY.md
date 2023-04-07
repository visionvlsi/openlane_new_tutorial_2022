In OpenLane, the SYNTH_STRATEGY variable can be used to specify the synthesis strategy and optimization level for a design.

The SYNTH_STRATEGY variable can take on different values depending on the specific optimization goals for the design. In particular, the values of the DELAY/AREA and 0-4/0-3 sub-parameters within the SYNTH_STRATEGY variable convey information about the desired optimization levels for delay and area.

Here is a breakdown of what the different sub-parameters in the SYNTH_STRATEGY variable convey:

DELAY/AREA: This sub-parameter specifies whether the synthesis strategy should optimize for delay (specified as "DELAY") or area (specified as "AREA").

0-4: If the DELAY sub-parameter is selected, the 0-4 sub-parameter specifies the level of optimization for delay, with higher numbers indicating more aggressive optimization. For example, "DELAY 4" would indicate an aggressive optimization for delay.

0-3: If the AREA sub-parameter is selected, the 0-3 sub-parameter specifies the level of optimization for area, with higher numbers indicating more aggressive optimization. For example, "AREA 3" would indicate a considerable optimization for area.

For example, the following command sets the SYNTH_STRATEGY variable to optimize for delay with an aggressive optimization level of 4:

set SYNTH_STRATEGY "DELAY 4"

Or, the following command sets the SYNTH_STRATEGY variable to optimize for area with a moderate optimization level of 2:

set SYNTH_STRATEGY "AREA 2"

The choice of optimization levels depends on the specific design requirements and goals, as well as the characteristics of the target technology and the constraints of the design.
