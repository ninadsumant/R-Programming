library(tidyverse)
library(ggplot2)
library(plotly)

data = data.frame(diamonds)
plot_ly(data, x= data$cut, y=data$carat, type="scatter")
ggplot2::geom_boxplot(data)



ggplot(diamonds, aes(diamonds$carat, diamonds$clarity, colour = "dark blue"),geom_point())

df <- data.frame(
  gp = factor(rep(letters[1:3], each = 10)),
  y = rnorm(30)
)
ds <- plyr::ddply(df, "gp", plyr::summarise, mean = mean(y), sd = sd(y))

# The summary data frame ds is used to plot larger red points on top
# of the raw data. Note that we don't need to supply `data` or `mapping`
# in each layer because the defaults from ggplot() are used.
ggplot(data, aes(x=data$carat, y=data$color)) +
  geom_point() +
  geom_point(data = data, aes(y = data$clarity), colour = 'red', size = 3)

ggplot(diamonds,aes(x=diamonds$carat,y=diamonds$price,
           color=diamonds$color))+
  geom_point()


library(ggplot2)
ggplot(diamonds, aes(x = diamonds$price,color=diamonds$color)) +
  geom_histogram()



library(ggplot2)
ggplot(diamonds, aes(x = diamonds$price,color=diamonds$color, size = 2)) +
  geom_bar()
