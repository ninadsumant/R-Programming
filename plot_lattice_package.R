# cars datasets
# 
# # construct scatter plot (use base funtion) use lab argument of plot function using where
# thick marks of x and y axes specifies int (use need to use a vector in lab argument)
# 
# use cex.axes argument to control the size of the numbers associate with axes.change the 
# orientation on labels from vertical to horizontal  

cars
?plot()
plot(cars$speed,cars$dist,xlab="Speed",ylab="Dist",main="cars",type="s")


#using points function add new observation to the previus plot the values are speed =23,26
and dist=60,61

plot(cars$speed,cars$dist,xlab="Speed",ylab="Dist",main="cars",xlim=c(0,26),ylim=c(0,61))
points(cars$speed,cars$dist,cex=.5,col="dark red",pch=21)
?points()


to create more than oneplot in thesame layout use function par and mfrow 
create to histograms representing each column of cars dataset

?par()


attach(cars)
par(mfrow=c(1,2),pty="m")
hist(speed,col = rainbow(speed))
hist(dist,col=rainbow(dist))


use layout funtion to print a display three plots 
1.left side = scatter plot of cars
2.top right= histogram of column speed
3.bottom right =histogram of colums distance


?layout()
layout(matrix(c(1, 2,
                1, 3), nrow=2, byrow=TRUE))
layout.show(n=3)
plot(cars$speed,cars$dist,xlab="Speed",ylab="Dist",main="cars",xlim=c(0,26),ylim=c(0,61))
hist(speed,col = rainbow(speed))
hist(dist,col=rainbow(dist))


use lattice and given dataset 

construct bar chart of goals(gd) grouping by team



install.packages("lattice")
library("lattice")

foot=read.csv("file:///C:/Users/lacs.lab/Documents/sampledataset.csv",sep = ";")
foot
df=data.frame(foot)
df

team1=subset(df,df$team=="1")
team1
barchart(df$gd~df$win|df$team,groups=df$team,horiz=FALSE)


#1.construct histogram of winning matches use win attribute group by team
#2.use x y plot to construct graph of goals receive against goals done a played at home
#(use attribute home group by team)

?hist()
par(mfrows=c(1,2))
hist(team1$win)
hist(team2$win)


#plot timeseries using x y plot.ts function 


#goals done by variable team use different colors
