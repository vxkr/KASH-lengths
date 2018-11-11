
segments <- list("P1", "P2", "P3", "P4")
runs <- list("all_1", "all_2")
resdiues <- list("24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55")
everything_unfixed <- list()
residue_names <- list()
counter <- 0

for (i in runs) {
	for (j in segments) {
		if (j == "P1") {
			for (k in resdiues) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_unfixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
				
			}
		} else if (j == "P2") {
			for (k in resdiues) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_unfixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
			}
		} else if (j == "P3") {
			for (k in resdiues[1:21]) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_unfixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
		  } 
		} else {
			for (k in resdiues[1:18]) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_unfixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
			}
		}
	}
}

for (i in 1:206) {
	everything_unfixed[[i]] <- everything_unfixed[[i]][,-1]
	everything_unfixed[[i]] <- everything_unfixed[[i]][,-1]
	everything_unfixed[[i]] <- everything_unfixed[[i]][,-4]
	everything_unfixed[[i]] <- everything_unfixed[[i]][-1,]
	everything_unfixed[[i]] <- t(everything_unfixed[[i]])
	
}

for (i in 1:103) {
  everything_unfixed[[i]] <- cbind(everything_unfixed[[i]], everything_unfixed[[i+103]])
  rownames(everything_unfixed[[i]]) <- NULL
  rownames(residue_names[[i]]) <- NULL
  everything_unfixed[[i]] <- cbind(residue_names[[i]], everything_unfixed[[i]])
}

everything_unfixed <- everything_unfixed[1:103]

elec_p1_unfixed <-  everything_unfixed[[1]][1,]
elec_p2_unfixed <-  everything_unfixed[[33]][1,]
elec_p3_unfixed <-  everything_unfixed[[65]][1,]
elec_p4_unfixed <-  everything_unfixed[[86]][1,]
vdw_p1_unfixed <-   everything_unfixed[[1]][2,]
vdw_p2_unfixed <-   everything_unfixed[[33]][2,]
vdw_p3_unfixed <-   everything_unfixed[[65]][2,]
vdw_p4_unfixed <-   everything_unfixed[[86]][2,]
total_p1_unfixed <- everything_unfixed[[1]][3,]
total_p2_unfixed <- everything_unfixed[[33]][3,]
total_p3_unfixed <- everything_unfixed[[65]][3,]
total_p4_unfixed <- everything_unfixed[[86]][3,]


for (i in 1:99) {
  if (i < 32) {
    #p1
    elec_p1_unfixed <-rbind(elec_p1_unfixed, everything_unfixed[[i+1]][1,])
    vdw_p1_unfixed <-rbind(vdw_p1_unfixed, everything_unfixed[[i+1]][2,])
    total_p1_unfixed <-rbind(total_p1_unfixed, everything_unfixed[[i+1]][3,])
    
  } else if (i < 63) {
    #p2
    elec_p2_unfixed <-rbind(elec_p2_unfixed, everything_unfixed[[i+12]][1,])
    vdw_p2_unfixed <-rbind(vdw_p2_unfixed, everything_unfixed[[i+2]][2,])
    total_p2_unfixed <-rbind(total_p2_unfixed, everything_unfixed[[i+2]][3,])
    
  } else if(i < 83) {
    #p3
    elec_p3_unfixed <-rbind(elec_p3_unfixed, everything_unfixed[[i+3]][1,])
    vdw_p3_unfixed <-rbind(vdw_p3_unfixed, everything_unfixed[[i+3]][2,])
    total_p3_unfixed <-rbind(total_p3_unfixed, everything_unfixed[[i+3]][3,])
    
  } else {
    #p4
    elec_p4_unfixed <-rbind(elec_p4_unfixed, everything_unfixed[[i+4]][1,])
    vdw_p4_unfixed <-rbind(vdw_p4_unfixed, everything_unfixed[[i+4]][2,])
    total_p4_unfixed <-rbind(total_p4_unfixed, everything_unfixed[[i+4]][3,])
    
  }
}

rownames(elec_p1_unfixed) <- NULL
rownames(elec_p2_unfixed) <- NULL
rownames(elec_p3_unfixed) <- NULL
rownames(elec_p4_unfixed) <- NULL
rownames(vdw_p1_unfixed) <- NULL
rownames(vdw_p2_unfixed) <- NULL
rownames(vdw_p3_unfixed) <- NULL
rownames(vdw_p4_unfixed) <- NULL
rownames(total_p1_unfixed) <- NULL
rownames(total_p2_unfixed) <- NULL
rownames(total_p3_unfixed) <- NULL
rownames(total_p4_unfixed) <- NULL
  
colnames(elec_p1_unfixed) <- NULL
colnames(elec_p2_unfixed) <- NULL
colnames(elec_p3_unfixed) <- NULL
colnames(elec_p4_unfixed) <- NULL
colnames(vdw_p1_unfixed) <- NULL
colnames(vdw_p2_unfixed) <- NULL
colnames(vdw_p3_unfixed) <- NULL
colnames(vdw_p4_unfixed) <- NULL
colnames(total_p1_unfixed) <- NULL
colnames(total_p2_unfixed) <- NULL
colnames(total_p3_unfixed) <- NULL
colnames(total_p4_unfixed) <- NULL

write.table(elec_p1_unfixed, "elec_p1_unfixed.txt", sep="\t")
write.table(elec_p2_unfixed, "elec_p2_unfixed.txt", sep="\t")
write.table(elec_p3_unfixed, "elec_p3_unfixed.txt", sep="\t")
write.table(elec_p4_unfixed, "elec_p4_unfixed.txt", sep="\t")
write.table(vdw_p1_unfixed, "vdw_p1_unfixed.txt", sep="\t")
write.table(vdw_p2_unfixed, "vdw_p2_unfixed.txt", sep="\t")
write.table(vdw_p3_unfixed, "vdw_p3_unfixed.txt", sep="\t")
write.table(vdw_p4_unfixed, "vdw_p4_unfixed.txt", sep="\t")
write.table(total_p1_unfixed, "total_p1_unfixed.txt", sep="\t")
write.table(total_p2_unfixed, "total_p2_unfixed.txt", sep="\t")
write.table(total_p3_unfixed, "total_p3_unfixed.txt", sep="\t")
write.table(total_p4_unfixed, "total_p4_unfixed.txt", sep="\t")