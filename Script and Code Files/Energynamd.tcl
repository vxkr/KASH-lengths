###############################################################
# ENERGY.tcl                                                  #
# DESCRIPTION:                                                #
#  energy calculation between selections  					  #
#
# inputs: 
#         mol- the name of the molecule for which energies
#				are being calculated. All resulting energy 
#				files will named accordingly                  #   
# EXAMPLE USAGE:                                              #
#       ENERGY 5ED8_Model1 "protein" "protein and segname P1"

# By: Zeinab Jahed
###############################################################

proc ENERGY { mol sel1 sel2 } {

set mol1 [atomselect top $sel1]
set mol2 [atomselect top $sel2]
namdenergy -ofile "$mol$sel1$sel2" -exe /Users/Zeinab/MD\ files/NAMD_2.12_MacOSX-x86_64-multicore\ 2/namd2 -sel $mol1 $mol2 -vdw -elec -nonb
}
set selec1 "protein and segname P1 and resid "
set selec2 "lipid"

cd ~
cd /Users/Zeinab/MD\ files/Kindlin/5xq0/RUN1/5xq0Mod_Tension/analysis
mol new 5xq0Mod_ionized.psf
mol addfile RUN1_CVtension_relax_Stride10.dcd waitfor -1
set molname "RUN1_CVtension_"

cd ~
cd /Users/Zeinab/MD\ files/Kindlin/5xq0/RUN1/5xq0Mod_Tension/analysis/
ENERGY $molname $selec1 $selec2
mol delete top
