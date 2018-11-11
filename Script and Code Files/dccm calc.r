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


dcd_images <- list("1.png","2.png","3.png", "4.png","5.png","6.png")

for (i in 1:6) {
	a <- list_pdb[[i]]
	b <- list_dcd[[i]]
	
	ca.inds <- atom.select(a, elety="CA")
	xyz <- fit.xyz(fixed=a$xyz, mobile=b, fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
	dim(xyz) == dim(b)
#
	
	cij[[i]] <- dccm(xyz[,ca.inds$xyz])
	
	mypath <- file.path("C:/Users/vyomt/Desktop/Stuff", dcd_images[[i]])
	png(filename = mypath, width = 500, height = 500, units = "px", pointsize = 15, bg = "white")
	plot.dccm(cij[[i]], col.regions=bwr.colors(200))
	dev.off()

	
}




