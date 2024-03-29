# File Creation => For Project and Storage scripts.
# Open Tool : 
  csh
  source /home/install/icc2_synopsys
  icc2_shell

  
# Lib Creation :
#Set All .ndm file into one varaiable
  set a {saed32_1p9m_tech.ndm saed32_hvt.ndm saed32_lvt.ndm saed32_rvt.ndm saed32_sram_lp.ndm}

#Create Lib from the varaiable
create_lib -ref_lib $a ./outputs/works/ORCA_TOP.nlib

# Open library by using command 
open_lib ./outputs/works/ORCA_TOP.nlib/ 

#Create Block
create_block ORCA_TOP

# Read Netlist 
read_verilog ./design_inputs/ORCA_TOP.v

#Save Block
save_block

#Sanity_Checks
check_netlist
check_design_mismatch
check_scandef
check_mv_desgin 
check_timing
