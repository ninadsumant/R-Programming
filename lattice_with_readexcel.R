# Grid graph - it is an alternative graphic system it which was added later to r
# the difference between base graphics and grid is that is allows for the creation 
# of multiple regions called viewports on a single graphic page. the  grid package 
# need to be loaded before u use it
# 
# lattice: it is a graphic system that implements faceted graphics which was originally 
# developed for languages like S and S+
# it uses grid graphics u need to install lattice package
# 

# xy plot for scatter plot
# stlom scatter plot matrix
# cloud 3d scatterplot
# dotplot 
# barchart
# histogram......


# write R script use annual-changes-in-the-earths-rot as a dataset.
# ->Read the excel file starting from 2nd row and ending at 22nd row.
# ..fetch all 3 columns and store it in 3 different variables.
# using this 3 variables draw scatter chart or plot  , 3d scatter
# plot and spinning 3d scatter plot (Do conversion of datatypes
#if required and all necessary packages must be install)

install.packages("lattice")
library("lattice")
install.packages("readxl")
library("readxl")
data<-read_excel("Annual-changes-in-the-earths-rot-slip-1.xls",range="A2:c22")
data
df=data.frame(data)
df

?xyplot()

xyplot(df$x~df$Year,data=df)
iris
xyplot(Sepal.Length~Sepal.Width,data=iris)


library(readxl)
data <- read_excel("Excel sheet solution/Annual-changes-in-the-earths-rot-slip-1.xls",range = "A2:c22")
View(data)
df=data.frame(data)
df
xyplot(df$x~df$Year, data=df,xlab = "years", ylab = "x", main = "Plot")
barplot(df$x)
boxplot(df,df$Year,df$x)