?base
install.packages("lattice")
library("lattice")
?base
?plot
plot(cars$speed,cars$dist,xlab = "Speed",ylab = "Distance",col="blue",main = "Cars Dataset",lab=c(10,10,15),xlim =c(4,26) )
points(x=c(23,26),y=c(60,61),col="red")
?lab
?par
?mfrow
?histogram
?hist
hist(cars$speed,xlab="Speed")
hist(cars$dist,ylab = "Distance")
par(mfrow=c(1,2),pty="m")
?layout
lay=layout(mat=matrix(c(1,3,1,2),2,2,byrow = TRUE),respect = TRUE)
layout.show(lay)

install.packages("lattice")
library(lattice)
info=read.csv(file = "sampledataset.csv",sep = ";")
info
barchart(info$win~info$gd|info$team,groups=info$team,horiz=FALSE,stack=FALSE)
barchart(info$team)
?grouping
?group
hist(info$win,groups=info$team)
xyplot(info$gd~info$gs|info$home,groups = info$team,horiz=FALSE)
xyplot.ts(info$gd)

?xyplot.ts
