#use cars dataset construct scatterplot use base function, use lab arguent of plot function where thick marks o f X & Y axis 
#specifies integer. Use cex.axis to control size of numbers associated with axis. change the orientation of labels 
#from vertical to horizontal

data = data.frame(cars)
par(mfrow=c(2,2))
plot(data,cex.lab = 1.5,cex= 1.9, col.lab=2.5, col = "dark blue")

#using points() function add new observation to the last plot using red color.
#the values are speed = 23,26 and dist=60,61
points(c(23,26),c(60,61),cex= 3.0, col = "dark red")

#TO create more than 1 plot in the same layout use functions par and mfrow
#create 2 histograms representing each column of cars dataset
hist(data$speed,data$dist,xlim=c(0,50), breaks = 5)


#use layout function to print 3 plots on lef side scatter plot of cars, on top right histogram of speed
#on on bottom right of column distance

disp=layout(matrix(c(1,2,3,0),2,2),TRUE)
plot(data,cex.lab = 1.5,cex= 1.9, col.lab=2.5, col = "dark blue")
hist(data$speed,data$dist,xlim=c(0,50), breaks = 5)
hist(data$dist,data$speed,xlim=c(0,50), breaks = 5)

#use lattice package and given datsaet. construct barchart of goals done (use var = gd)
#grouping by team
library(lattice)
data = data.frame(read.csv("sampledataset.csv",sep=";"))

barchart(data$win~data$gd|data$team, groups = data$team, horiz=FALSE)



#constrct histrogram use win attr. ovew gs attr. on home and group by team
histogram(data$win~data$team, groups =  data$team)

#plot timeseries graph using xyplot.ts()

xyplot.ts(data$gd, groupby = data$team)




library(plotly)

Animals <- c("giraffes", "orangutans", "monkeys")
SF_Zoo <- c(20, 14, 23)
LA_Zoo <- c(12, 18, 29)
data <- data.frame(Animals, SF_Zoo, LA_Zoo)

p <- plot_ly(data, x = ~Animals, y = ~SF_Zoo, type = 'bar', name = 'SF Zoo') %>%
  add_trace(y = ~LA_Zoo, name = 'LA Zoo') %>%
  layout(yaxis = list(title = 'Count'), barmode = 'group')

p
