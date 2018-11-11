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

ca.inds <- atom.select(list_pdb[[7]], elety="CA")
xyz <- fit.xyz(fixed=list_pdb[[7]]$xyz, mobile=list_dcd[[7]], fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(list_dcd[[7]])
rf7 <- rmsf(xyz[,ca.inds$xyz])