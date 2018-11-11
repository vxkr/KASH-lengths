
mol new D:/College/Research/Mofrad\ Lab/Simulations/KASH_ionized.psf waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Simulations/1-KASH_RUN1_Stride10.dcd waitfor -1

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P1.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]


set mov [atomselect 0 "segid P1 and resid 24 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P2.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 0 "segid P2 and resid 23 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P3.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 0 "segid P3 and resid 22 to 44"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P4.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 0 "segid P4 and resid 22 to 41"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

mol delete top

mol new D:/College/Research/Mofrad\ Lab/Simulations/KASH_ionized.psf waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Simulations/2-KASH_RUN1_ARG1fix.dcd step 2 waitfor -1

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P1.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]


set mov [atomselect 1 "segid P1 and resid 24 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P2.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 1 "segid P2 and resid 23 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P3.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 1 "segid P3 and resid 22 to 44"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P4.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 1 "segid P4 and resid 22 to 41"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

mol delete top

mol new D:/College/Research/Mofrad\ Lab/Simulations/KASH_ionized.psf waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Simulations/3-KASH_RUN1_ARG1fix.dcd step 2 waitfor -1

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P1.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]


set mov [atomselect 2 "segid P1 and resid 24 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P2.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 2 "segid P2 and resid 23 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P3.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 2 "segid P3 and resid 22 to 44"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/fixed_P4.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 2 "segid P4 and resid 22 to 41"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

mol delete top

mol new D:/College/Research/Mofrad\ Lab/Simulations/KASH_ionized.psf waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Simulations/all-KASH_RUN1_Stride10.dcd last 400 waitfor -1

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P1.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]


set mov [atomselect 3 "segid P1 and resid 24 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P2.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 3 "segid P2 and resid 23 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P3.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 3 "segid P3 and resid 22 to 44"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P4.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 3 "segid P4 and resid 22 to 41"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

mol delete top

mol new D:/College/Research/Mofrad\ Lab/Simulations/KASH_ionized.psf waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Simulations/all-KASH_RUN1_Stride10.dcd first 401 waitfor -1

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P1.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]


set mov [atomselect 4 "segid P1 and resid 24 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P2.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 4 "segid P2 and resid 23 to 55"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P3.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 4 "segid P3 and resid 22 to 44"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

set data_radius "D:/College/Research/Mofrad\ Lab/Radius\ of\ Gyration/all_P4.txt"

set outfile [open $data_radius w]
set nf [molinfo top get numframes]

set mov [atomselect 4 "segid P4 and resid 22 to 41"]

for {set i 0} {$i<$nf} {incr i} {
	$mov frame $i
	$mov update
	set rg [measure rgyr $mov]
	puts $outfile "$i,$rg"
}
close $outfile

mol delete top

