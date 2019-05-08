install.packages("plotly")
library("plotly")


install.packages("shiny")
library("shiny")

?plotly
valX=c(10:14)
valY=c(14,52,98,23,68)
df=data.frame(valX,valY)


plot_ly(df,x=valX,y=valY,mode="lines")

#bubble chart
plot_ly(Orange,x=~age,y=~circumference,mode="markers",type = "scatter",marker=list(size=30,opacity=0.10))

#heat
heatmap(volcano)

#area chart
plot_ly(Orange,x=~age,y=~circumference,mode="markers",type = "scatter",fill="tozeroy")



#boxplot : boxplot is major of how well data is distributed in a dataset, it devide the dataset into 3 queartis 
#         the graph represent min,max,mdian,1st quairties ,3rd quaritise in dataset. it is useful in comparing distribution of data across data set
#         for base graphinc boxplot() is used. 
#1st atrr : vector (formula)
#2nd attr ; is data (dataf frame)
#3rd attr : noch (logical value) set TRUE if draw the nach
#varbuilr is logical value, it is set to true to draw build of the box proposenate to sample size
#names : are the grop lable which will be printed under each box plot 
#main is used to set title.#

#mtcars adatset construct boxplot to show the relation between mpg and cyl

dfmtcars=data.frame(mtcars)

boxplot(mtcars$mpg~mtcars$cyl,mtcars,main="boxplot")


install.packages("tidyverse")
library("tidyverse")

install.packages("ggplot2")
library("ggplot2")

?ggplot2

ggplot(mtcars,aes(mpg,cyl,color="red"))+geom_point()+geom_smooth()

diamonds

#diamonds price between 2000 to 4000

ggplot(filter(diamonds,price<4000 & price>2000),aes(depth,price,colour=color))+geom_point()+geom_smooth()

ggplot(diamonds)+geom_point(aes(x=depth,y=price,colour=color))+geom_smooth(aes(x=carat,y=price,colour=color))

ggplot(diamonds,aes(x=carat,y=price))+geom_point(aes(colour=color))+geom_smooth()

ggplot(filter(diamonds,price<4000 & price>2000),aes(depth,price,colour=color))+geom_boxplot()

ggplot(filter(diamonds,price<4000 & price>2000),aes(depth,price,colour=color))+geom_area()

ggplot(filter(diamonds,price<4000 & price>2000),aes(price,colour=color))+geom_bar()

ggplot(filter(diamonds,price<4000 & price>2000),aes(price,colour=color))+geom_histogram()


#Explain Tidyverse and ggplot2
