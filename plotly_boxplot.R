plotly - it is use to make interactive,quality web graphs
          it is basically use to create line plot scatter pot bar chart histogram ,gridyarea chart,
          subplot 
create a line plot from vector x and y with 5 different values.



install.packages("plotly")
install.packages("sp")
install.packages("raster")
library("plotly")
?plotly()

#create a line plot for vectors x and y for 5 different values

for the same data construct scatter plot bar plot bubble chart

?heatmap()

a=c(1,2,3,4,5,6)
b=c(10,20,30,40,50,60)
c=c(a,b)
c

?plo
p <- plot_ly(z=c, type = "scatter")
p

attach(iris)
p=plot_ly(x=a,y=b,mode="lines")
p



p=plot_ly(z=volcano,type="heatmap")
p
?plot_ly()


p <- plot_ly(x = ~Women, y = ~Men, text = ~School, type = 'scatter', mode = 'markers',
             marker = list(size = ~Gap, opacity = 0.5))
p



b=plot_ly(x=a,y=b,type="scatter",mode="markers",marker=list(size=50,opacity=0.5))
b


box plot - is a major of how well the data is distributed in the dataset it divides the dataset
          into 3 quarties . the graph represents minimum , maximum , median ,  first quartile 
          and 3rd quartile in the dataset. it is useful in comparing distributions of data across
          datasets for base graphics box plot function is use Use 
          1st - is vector or a formula
          2nd - is data=data.frame()
          3rd - is notch is a logical value(set true if you draw the notch)
          varwidth is logical value is set to true to draw width of box proposanate to the sample size
          names - are the group labels which will be print under each box plot and main is used to 
          set title
          
consider mtcars dataset and construct a box plot..to show the relationship between mpg and cyl



cars=(mtcars[,c('mpg','cyl')])
cars
boxplot(mpg~cyl,data=mtcars,notch=TRUE)
