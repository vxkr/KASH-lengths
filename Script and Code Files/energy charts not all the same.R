
row_f <- seq(0,240.6,by=0.2)
row_nf <- seq(0,151.2, by=0.2)


plot(row_nf, nfl1_elec, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Electrostatic energy between entire protein and lipid, not fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-900, -50))
lines(nfl2_elec, typ="l", col="darkolivegreen4", lwd=2)
lines(nfl3_elec, typ="l", col="dodgerblue4", lwd=2)
lines(nfl4_elec, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_f, fl1_elec, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Electrostatic energy between entire protein and lipid, fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-900, -50))
lines(fl2_elec, typ="l", col="darkolivegreen4", lwd=2)
lines(fl3_elec, typ="l", col="dodgerblue4", lwd=2)
lines(fl4_elec, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_nf, nfp1_elec, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Electrostatic energy between protein outside membrane and lipid, not fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-525, 100))
lines(nfp2_elec, typ="l", col="darkolivegreen4", lwd=2)
lines(nfp3_elec, typ="l", col="dodgerblue4", lwd=2)
lines(nfp4_elec, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_f, fp1_elec, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Electrostatic energy between protein outside membrane and lipid, fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-525, 100))
lines(fp2_elec, typ="l", col="darkolivegreen4", lwd=2)
lines(fp3_elec, typ="l", col="dodgerblue4", lwd=2)
lines(fp4_elec, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_nf, nfl1_vdw, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="vdW energy between entire protein and lipid, not fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-350, -125))
lines(nfl2_vdw, typ="l", col="darkolivegreen4", lwd=2)
lines(nfl3_vdw, typ="l", col="dodgerblue4", lwd=2)
lines(nfl4_vdw, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_f, fl1_vdw, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="vdW energy between entire protein and lipid, fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-350, -125))
lines(fl2_vdw, typ="l", col="darkolivegreen4", lwd=2)
lines(fl3_vdw, typ="l", col="dodgerblue4", lwd=2)
lines(fl4_vdw, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_nf, nfp1_vdw, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="vdW energy between protein outside membrane and lipid, not fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-150, 0))
lines(nfp2_vdw, typ="l", col="darkolivegreen4", lwd=2)
lines(nfp3_vdw, typ="l", col="dodgerblue4", lwd=2)
lines(nfp4_vdw, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_f, fp1_vdw, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="vdW energy between protein outside membrane and lipid, fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-150, 0))
lines(fp2_vdw, typ="l", col="darkolivegreen4", lwd=2)
lines(fp3_vdw, typ="l", col="dodgerblue4", lwd=2)
lines(fp4_vdw, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_nf, nfl1_total, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Total energy between entire protein and lipid, not fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-1150, -250))
lines(nfl2_total, typ="l", col="darkolivegreen4", lwd=2)
lines(nfl3_total, typ="l", col="dodgerblue4", lwd=2)
lines(nfl4_total, typ="l", col="darkgoldenrod2", lwd=2)



plot(row_f, fl1_total, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Total energy between entire protein and lipid, fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-1150, -250))
lines(fl2_total, typ="l", col="darkolivegreen4", lwd=2)
lines(fl3_total, typ="l", col="dodgerblue4", lwd=2)
lines(fl4_total, typ="l", col="darkgoldenrod2", lwd=2)



plot(row_nf, nfp1_total, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Total energy between protein outside membrane and lipid, not fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-630, 45))
lines(nfp2_total, typ="l", col="darkolivegreen4", lwd=2)
lines(nfp3_total, typ="l", col="dodgerblue4", lwd=2)
lines(nfp4_total, typ="l", col="darkgoldenrod2", lwd=2)


plot(row_f, fp1_total, ylab="Energy (kcal/mol)", xlab="Time (ns)", main="Total energy between protein outside membrane and lipid, fixed", typ="l", col = "brown1", lwd = 2, ylim = c(-630, 45))
lines(fp2_total, typ="l", col="darkolivegreen4", lwd=2)
lines(fp3_total, typ="l", col="dodgerblue4", lwd=2)
lines(fp4_total, typ="l", col="darkgoldenrod2", lwd=2)
