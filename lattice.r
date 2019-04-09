library(lattice)
d = data.frame(iris)
d

xyplot(Rural.Male~Rural.Female,data=d)
splom(iris[1:3],data=d)
cloud(d$Sepal.Length~d$Sepal.Width*d$Petal.Length|Species, data=iris)
dotplot(d$Sepal.Length~d$Sepal.Width,data=iris)
histogram(d$Sepal.Length~d$Sepal.Width,data=iris,col=rainbow(55:10))
