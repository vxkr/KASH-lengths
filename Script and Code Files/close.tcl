
set data_angle "D:/College/Research/Mofrad\ Lab/Integrin/Kindlin/kindlin_close.txt"

set nf [molinfo top get numframes]


set outfile [open $data_angle w]

for {set i 0} {$i < $nf} {incr i} {
    puts "frame $i of $nf"
	set closestuff [atomselect 1 "(within 4 of resid 744 to 762) and (not (segname PP1 or segname PP2))"]
	set textclose [$closestuff get resid]
	puts $outfile "$i $textclose"
	puts $outfile "\n"
	}

close $outfile