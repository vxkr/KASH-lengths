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
#       ENERGY 5ED8_Model1 "protein" "protein and segname P1" #
###############################################################

 
proc ENERGY { mol sel1 sel2 } {

set mol1 [atomselect top $sel1]
set mol2 [atomselect top $sel2]
namdenergy -ofile "$mol$sel1$sel2" -exe namd2 -par par_all36_carb.prm -par par_all36_cgenff.prm -par par_all36_lipid.prm -par par_all36m_prot.prm -par par_all36_na.prm -par par_all36_prot.prm -par par_amber2charmm.inp -par toppar_all36_carb_glycopeptide.str -par toppar_water_ions_namd.str -sel $mol1 $mol2 -vdw -elec -nonb
}

set selec1 "protein and segname P1 and resid 1 to 23"
set selec2 "protein and segname P1 and resid 24 to 55"
set molname "all2-KASH_RUN1_Stride10_"

cd D:/College/Research/Mofrad\ Lab/Energy
ENERGY $molname $selec1 $selec2

set selec1 "protein and segname P2 and resid 1 to 23"
set selec2 "protein and segname P2 and resid 24 to 55"
set molname "all2-KASH_RUN1_Stride10_"

cd D:/College/Research/Mofrad\ Lab/Energy
ENERGY $molname $selec1 $selec2

set selec1 "protein and segname P3 and resid 1 to 23"
set selec2 "protein and segname P3 and resid 24 to 44"
set molname "all2-KASH_RUN1_Stride10_"

cd D:/College/Research/Mofrad\ Lab/Energy
ENERGY $molname $selec1 $selec2

set selec1 "protein and segname P4 and resid 1 to 23"
set selec2 "protein and segname P4 and resid 24 to 41"
set molname "all2-KASH_RUN1_Stride10_"

cd D:/College/Research/Mofrad\ Lab/Energy
ENERGY $molname $selec1 $selec2