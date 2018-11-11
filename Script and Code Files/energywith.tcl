

proc ENERGY { mol sel1 sel2 } {

set mol1 [atomselect top $sel1]
set mol2 [atomselect top $sel2]
namdenergy -ofile "$mol$sel1$sel2" -exe namd2 -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_carb.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_cgenff.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_lipid.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36m_prot.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_na.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_prot.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/toppar_all36_carb_glycopeptide.str -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/toppar_water_ions_namd.str -sel $mol1 $mol2 -vdw -elec -nonb
}


#stop
set molname "talin_"

set selec1 "protein and segname PP1"
set selec2 "protein and segname PP3"

cd D:/College/Research/Mofrad\ Lab/Integrin/Talin/Energy
ENERGY $molname $selec1 $selec2

set selec1 "protein and segname PP1"
set selec2 "protein and segname PP3 and resid 744 to 747"

cd D:/College/Research/Mofrad\ Lab/Integrin/Talin/Energy
ENERGY $molname $selec1 $selec2

set selec1 "protein and segname PP1"
set selec2 "protein and segname PP3 and resid 752 to 754"

cd D:/College/Research/Mofrad\ Lab/Integrin/Talin/Energy
ENERGY $molname $selec1 $selec2

set selec1 "protein and segname PP1"
set selec2 "lipid"

cd D:/College/Research/Mofrad\ Lab/Integrin/Talin/Energy
ENERGY $molname $selec1 $selec2

mol delete top

