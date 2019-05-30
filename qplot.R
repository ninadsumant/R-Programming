install.packages("tidyverse")
library("tidyverse")
install.packages("ggplot")
library("ggplot2")

diamonds

?ggplot2()


?ggplot()
?ggplot()
?qplot()

diamonds
qplot(diamonds$carat, data=diamonds,color="white")
attach(diamonds)
qplot(carat, price, data=diamonds , shape=depth, 
      facets=x~y, size=I(3),
      xlab="Horsepower", ylab="Miles per Gallon") 

attach(mtcars)

qplot(hp, mpg, data=mtcars, shape=am, color=am, 
      facets=gear~cyl, size=I(3),
      xlab="Horsepower", ylab="Miles per Gallon") 


attach(diamonds)


qplot(carat,price,data=diamonds,geom="line",color="yellow")
qplot(carat,cut,data=diamonds,geom="boxplot",color="yellow")
qplot(carat,cut,data=diamonds,geom="bar",color="yellow")
?qplot()

ggplot(diamonds)
ggplot(carat,aes(x,y))
?ggplot()

df=data.frame(x=factor(rep(letters[1:3],each=10)),
y=rnorm(30))
ggplot(diamonds,aes(x=diamonds$carat,y=diamonds$price))+geom_point(shape=24,color="red",size=1)
ggplot(diamonds,aes(x=diamonds$carat,y=diamonds$price))+geom_boxplot(color="red",size=1)
ggplot(diamonds,aes(x=diamonds$carat))+geom_bar(color="red",size=1)
ggplot(diamonds,aes(x=diamonds$carat),color="blue")+geom_histogram(color="red",size=1)
?filter()
?ggplot()


home-work

# Explain tidyverse package
# Explain ggplot2 package 