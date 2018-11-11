library(bio3d)

list_pdb <- list()
list_dcd <- list()
cij <- list()

list_pdb[[1]] <- read.pdb("D:/College/Research/Mofrad Lab/Redux/5ed9/CA/Run 1/5ed9_4to60_CA_Run1.pdb")
list_dcd[[1]] <- read.dcd("D:/College/Research/Mofrad Lab/Redux/5ed9/CA/Run 1/5ed9_4to60_CA_Run1.dcd")
list_pdb[[2]] <- read.pdb("D:/College/Research/Mofrad Lab/Redux/5ed9/CA/Run 2/5ed9_4to60_CA_Run2.pdb")
list_dcd[[2]] <- read.dcd("D:/College/Research/Mofrad Lab/Redux/5ed9/CA/Run 2/5ed9_4to60_CA_Run2.dcd")
list_pdb[[3]] <- read.pdb("D:/College/Research/Mofrad Lab/Redux/5ed9/CA/Run 3/5ed9_4to60_CA_Run3.pdb")
list_dcd[[3]] <- read.dcd("D:/College/Research/Mofrad Lab/Redux/5ed9/CA/Run 3/5ed9_4to60_CA_Run3.dcd")
list_pdb[[4]] <- read.pdb("D:/College/Research/Mofrad Lab/Redux/5ed9/WT/Run 1/5ed9_WT_CA_Run1.pdb")
list_dcd[[4]] <- read.dcd("D:/College/Research/Mofrad Lab/Redux/5ed9/WT/Run 1/5ed9_WT_CA_Run1.dcd")
list_pdb[[5]] <- read.pdb("D:/College/Research/Mofrad Lab/Redux/5ed9/WT/Run 2/5ed9_WT_CA_Run2.pdb")
list_dcd[[5]] <- read.dcd("D:/College/Research/Mofrad Lab/Redux/5ed9/WT/Run 2/5ed9_WT_CA_Run2.dcd")
list_pdb[[6]] <- read.pdb("D:/College/Research/Mofrad Lab/Redux/5ed9/WT/Run 3/5ed9_WT_CA_Run3.pdb")
list_dcd[[6]] <- read.dcd("D:/College/Research/Mofrad Lab/Redux/5ed9/WT/Run 3/5ed9_WT_CA_Run3.dcd")

ca.inds <- atom.select(list_pdb[[1]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[1]]$xyz, mobile=list_dcd[[1]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[1]])
rf1 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(list_pdb[[2]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[2]]$xyz, mobile=list_dcd[[2]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[2]])
rf2 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(list_pdb[[3]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[3]]$xyz, mobile=list_dcd[[3]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[3]])
rf3 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(list_pdb[[4]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[4]]$xyz, mobile=list_dcd[[4]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[4]])
rf4 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(list_pdb[[5]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[5]]$xyz, mobile=list_dcd[[5]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[5]])
rf5 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(list_pdb[[6]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[6]]$xyz, mobile=list_dcd[[6]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[6]])
rf6 <- rmsf(xyz[,ca.inds$xyz])

spacer1 <- rep(NA, 4)
spacer2 <- rep(NA, 14)
spacer3 <- rep(NA, 15)
spacer4 <- rep(NA, 2)

rf1_1 <- rf1[1:57]
rf2_1 <- rf2[1:57]
rf3_1 <- rf3[1:57]

rf1_2 <- rf1[58:114]
rf2_2 <- rf2[58:114]
rf3_2 <- rf3[58:114]

rf1_3 <- rf1[115:171]
rf2_3 <- rf2[115:171]
rf3_3 <- rf3[115:171]

rf1 <- c(spacer1, rf1_1, spacer2, rf1_2, spacer3, rf1_3, spacer4)
rf2 <- c(spacer1, rf2_1, spacer2, rf2_2, spacer3, rf2_3, spacer4)
rf3 <- c(spacer1, rf3_1, spacer2, rf3_2, spacer3, rf3_3, spacer4)

for (i in c(205:206, 62:74, 133:146, 1:4)) {
  rf4[i] <- NA
  rf5[i] <- NA
  rf6[i] <- NA
}


plot(rf1, ylab="RMSF", xlab="Residues", typ="l", col = "brown1", lwd = 2, ylim = c(0, 4))
lines(rf2, typ="l", col="brown1", lwd=2)
lines(rf3, typ="l", col="brown1", lwd=2)
lines(rf4, typ="l", col="darkolivegreen4", lwd=2)
lines(rf5, typ="l", col="darkolivegreen4", lwd=2)
lines(rf6, typ="l", col="darkolivegreen4", lwd=2)