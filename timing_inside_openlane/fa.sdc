create_clock -period 100 -name virtual_clock
set_input_delay 0 -min -rise [get_ports a] -clock virtual_clock
set_input_delay 0 -min -fall [get_ports a] -clock virtual_clock
set_input_delay 0 -max -rise [get_ports a] -clock virtual_clock
set_input_delay 0 -max -fall [get_ports a] -clock virtual_clock
set_input_transition 1.5 -min -rise [get_ports a]
set_input_transition 1.5 -min -fall [get_ports a]
set_input_transition 1.5 -max -rise [get_ports a]
set_input_transition 1.5 -max -fall [get_ports a]
set_input_delay 0 -min -rise [get_ports b] -clock virtual_clock
set_input_delay 0 -min -fall [get_ports b] -clock virtual_clock
set_input_delay 0 -max -rise [get_ports b] -clock virtual_clock
set_input_delay 0 -max -fall [get_ports b] -clock virtual_clock
set_input_transition 1.5 -min -rise [get_ports b]
set_input_transition 1.5 -min -fall [get_ports b]
set_input_transition 1.5 -max -rise [get_ports b]
set_input_transition 1.5 -max -fall [get_ports b]
set_input_delay 0 -min -rise [get_ports c] -clock virtual_clock
set_input_delay 0 -min -fall [get_ports c] -clock virtual_clock
set_input_delay 0 -max -rise [get_ports c] -clock virtual_clock
set_input_delay 0 -max -fall [get_ports c] -clock virtual_clock
set_input_transition 1.5 -min -rise [get_ports c]
set_input_transition 1.5 -min -fall [get_ports c]
set_input_transition 1.5 -max -rise [get_ports c]
set_input_transition 1.5 -max -fall [get_ports c]
set_output_delay -9 -min -rise [get_ports sum] -clock virtual_clock
set_output_delay -9 -min -fall [get_ports sum] -clock virtual_clock
set_output_delay 40 -max -rise [get_ports sum] -clock virtual_clock
set_output_delay 40 -max -fall [get_ports sum] -clock virtual_clock
set_load -pin_load 4 [get_ports sum]
set_output_delay -9 -min -rise [get_ports co] -clock virtual_clock
set_output_delay -9 -min -fall [get_ports co] -clock virtual_clock
set_output_delay 40 -max -rise [get_ports co] -clock virtual_clock
set_output_delay 40 -max -fall [get_ports co] -clock virtual_clock
set_load -pin_load 4 [get_ports co]
