set outDir ../../labs/tutorial/.
create_project tutorial_tcl $outDir/tutorial_tcl -part xc7a100tcsg324-1
add_files -norecurse ../../sources/tutorial/tutorial.v
import_files -fileset constrs_1 -force -norecurse ../../sources/tutorial/tutorial.xdc
update_compile_order -fileset sources_1
synth_design -rtl -name rtl_1
set_property package_pin U6 [get_ports {led[7]}]
set_property iostandard LVCMOS33 [get_ports [list {led[7]}]]
set_property package_pin V5 [get_ports {swt[7]}]
set_property iostandard LVCMOS33 [get_ports [list {swt[7]}]]
set_property target_constrs_file \
$outDir/tutorial_tcl/tutorial_tcl.srcs/constrs_1/imports/tutorial/tutorial.xdc [current_fileset -constrset]
save_constraints -force
launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step write_bitstream
