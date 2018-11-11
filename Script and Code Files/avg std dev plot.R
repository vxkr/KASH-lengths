color5 = "grey40"
color6 = adjustcolor(color5, alpha.f = 0.5) 
color7 = "royalblue1"
color8 = adjustcolor(color7, alpha.f = 0.3) 

mylist<-list(rf1[1:206],rf2[1:206],rf3[1:206])

X <-do.call(cbind, mylist)
avg<-rowMeans(X)
sdev<-rowSds(X)

plot( 1:206,
       avg, ylab="",
       type="l", lwd=2,xlab="Residues", col=color7, xaxt = "n", ylim = c(0.6,3.5))

arrows(1:206, avg-sdev, 1:206, avg+sdev, col=color8,length=0.01,lwd=0.7,angle=90, code=3)


mylist2<-list(rf4[1:206],rf5[1:206],rf6[1:206])

X2 <-do.call(cbind, mylist2)
avg2<-rowMeans(X2)
sdev2<-rowSds(X2)

lines(1:206,
      avg2, ylab="",
      type="l", lwd=2,xlab="Residues", col=color5)

arrows(1:206, avg2-sdev2, 1:206, avg2+sdev2, col=color6,length=0.01,lwd=0.7,angle=90, code=3)

