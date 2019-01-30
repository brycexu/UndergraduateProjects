set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN W5 [get_ports clk]
set_property PACKAGE_PIN W15 [get_ports reset]
create_clock -period 20.000 -name clk3 -waveform {0.000 10.000} [get_ports clk]


