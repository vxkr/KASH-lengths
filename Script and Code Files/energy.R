nfl1 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed/Not_fixed_lipid_P1.txt", header = TRUE)
nfl2 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed/Not_fixed_lipid_P2.txt", header = TRUE)
nfl3 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed/Not_fixed_lipid_P3.txt", header = TRUE)
nfl4 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed/Not_fixed_lipid_P4.txt", header = TRUE)
 
nfp1 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed_protein/Not_fixed_protein_P1.txt", header = TRUE)
nfp2 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed_protein/Not_fixed_protein_P2.txt", header = TRUE)
nfp3 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed_protein/Not_fixed_protein_P3.txt", header = TRUE)
nfp4 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Not\ fixed_protein/Not_fixed_protein_P4.txt", header = TRUE)
 
fp1 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed_protein/Fixed_protein_P1.txt", header = TRUE)
fp2 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed_protein/Fixed_protein_P2.txt", header = TRUE)
fp3 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed_protein/Fixed_protein_P3.txt", header = TRUE)
fp4 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed_protein/Fixed_protein_P4.txt", header = TRUE)

fl1 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed/Fixed_lipid_P1.txt", header = TRUE)
fl2 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed/Fixed_lipid_P2.txt", header = TRUE)
fl3 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed/Fixed_lipid_P3.txt", header = TRUE)
fl4 <- read.table("D:/College/Research/Mofrad\ Lab/Energy/Fixed/Fixed_lipid_P4.txt", header = TRUE)

nfl1_elec <- as.numeric(nfl1[,3])
nfl1_vdw <- as.numeric(nfl1[,4])
nfl1_total <- as.numeric(nfl1[,5])


nfl2_elec <- as.numeric(nfl2[,3])
nfl2_vdw <- as.numeric(nfl2[,4])
nfl2_total <- as.numeric(nfl2[,5])


nfl3_elec <- as.numeric(nfl3[,3])
nfl3_vdw <- as.numeric(nfl3[,4])
nfl3_total <- as.numeric(nfl3[,5])


nfl4_elec <- as.numeric(nfl4[,3])
nfl4_vdw <- as.numeric(nfl4[,4])
nfl4_total <- as.numeric(nfl4[,5])


nfp1_elec <- as.numeric(nfp1[,3])
nfp1_vdw <- as.numeric(nfp1[,4])
nfp1_total <- as.numeric(nfp1[,5])


nfp2_elec <- as.numeric(nfp2[,3])
nfp2_vdw <- as.numeric(nfp2[,4])
nfp2_total <- as.numeric(nfp2[,5])


nfp3_elec <- as.numeric(nfp3[,3])
nfp3_vdw <- as.numeric(nfp3[,4])
nfp3_total <- as.numeric(nfp3[,5])


nfp4_elec <- as.numeric(nfp4[,3])
nfp4_vdw <- as.numeric(nfp4[,4])
nfp4_total<- as.numeric(nfp4[,5])


fp1_elec <- as.numeric(fp1[,3])
fp1_vdw <- as.numeric(fp1[,4])
fp1_total <- as.numeric(fp1[,5])


fp2_elec <- as.numeric(fp2[,3])
fp2_vdw <- as.numeric(fp2[,4])
fp2_total <- as.numeric(fp2[,5])


fp3_elec <- as.numeric(fp3[,3])
fp3_vdw <- as.numeric(fp3[,4])
fp3_total <- as.numeric(fp3[,5])


fp4_elec <- as.numeric(fp4[,3])
fp4_vdw <- as.numeric(fp4[,4])
fp4_total <- as.numeric(fp4[,5])


fl1_elec <- as.numeric(fl1[,3])
fl1_vdw <- as.numeric(fl1[,4])
fl1_total <- as.numeric(fl1[,5])


fl2_elec <- as.numeric(fl2[,3])
fl2_vdw <- as.numeric(fl2[,4])
fl2_total <- as.numeric(fl2[,5])


fl3_elec <- as.numeric(fl3[,3])
fl3_vdw <- as.numeric(fl3[,4])
fl3_total <- as.numeric(fl3[,5])


fl4_elec <- as.numeric(fl4[,3])
fl4_vdw <- as.numeric(fl4[,4])
fl4_total <- as.numeric(fl4[,5])
