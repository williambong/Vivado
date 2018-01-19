
call xelab xil_defaultlib.apatb_duc_top -prj duc.prj --lib "ieee_proposed=./ieee_proposed" -s duc -debug wave
call xsim --noieeewarnings duc -tclbatch duc.tcl

