@echo off
set xv_path=C:\\opt\\winprog\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 330a49e847d8478dbf37a0f6852260a1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tutorial_tb_behav xil_defaultlib.tutorial_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
