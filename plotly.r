#create a line plot for vectors x and y with 5 diff. vals.
#on same data construct scatterplot, barplot, bubblechart, 
library(ggplot2)
library(plotly)
x=c(1,2,3,4,5)
y=c(12,44,11,26,16)
plot_ly(x = ~x, y = ~y,mode="line")

plot_ly(x = ~x, y = ~y,type="bar")

plot_ly(mtcars$mpg~mtcars$cyl,type="box")

plot_ly(iris,x = iris$Sepal.Length, y = iris$Petal.Length, type = "scatter",mode="markers", marker = list(size = ~y, opacity = 0.5))

mat = matrix(x,y,5,5)

hv = heatmap(mat,y)

boxplot(mtcars$mpg~mtcars$cyl)

