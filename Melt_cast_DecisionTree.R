install.packages("tidyr")
library(tidyr)


# Reshape- Data is a common task in practical data analysis .
#          Data reshaping involves rearrangement of the form not the
#          context of data for the purose of reshaping we can divide variables into 2 groups. 
#          1. identifier - this variables identify the unit of majorments that take place on they are usually descrete
#                           and fixed by design
#          2.majored variable - represents what is majored on that unit
#         
# melting and casting in R
# 
# reshape package is Use under which 2 function melt or cast
# 
# melt - it takes data in wide format and stacks a set of columns into a single column data
# 
#         the arguments to the function are 
#         1-dataframe
#         2-id variables
#         3-majored variable 
#         
#         
#         Ex. install reshape package use built in dataset ships apply the function melt by using id variable as
#             type and year

install.packages("reshape")
library(reshape)

install.packages("MASS")
library(MASS)

ships


?melt()
melt(ships)

ship=head(ships,n=10)
ship


id=c("type","year")
id


a=melt(data=ship,id.vars = id,measure.vars = c("period","service","incidents"))


# cast - aggregation occurs when the combination of varibles in the cast function does not identify individual 
#        observations in this case cast function reduces multiple values to a single value by summing up the 
#        values in the value column 
#       
#        Ex.
       
cast(a, type+year ~ variable ,sum)


install.packages("reshape2")
library("reshape2")   


# -> Use Airquality dataset

airquality
id1=c("month","day")
id1


a1=melt(airquality,id.vars = c("Month","Day"),measure.vars = c("Ozone","Solar.R","Wind","Temp"))

dcast(a1,Month+Day ~ variable ,sum)


# In reshape2 package melt takes wide format Data and converts into long format data
# wide cast takes long format data and converts into wide format data
# 
# use reshape2 package
# 1.consider mtcars dataset converted into long format by setting id(cyl,gear)
# 2.convert the dataset to wide format by using mean as the aggregation function 
# 3.use acast function(it converts long format melted dataframe into a wide format vector or matrix or array)
#   use acast function and apply the function to reformat the data.


mtcars


car=melt(mtcars,id.vars=c("cyl","gear"))
car

cast(car,cyl+gear ~ variable ,mean)

?acast()
acast(car,cyl+gear ~ variable)

# Consider a variable using melt function keep month and day constant apply recast function on this
# variable and previos melt variable

airquality

air=melt(airquality,id.vars = c("Month","Day"))


# Decision tree - it is a graph to reresnt choices and thier results in the form of a tree
#                 the nodes in the graph represent in the event or choice and the adjust of the 
#                 graph represent the decision rules or condition
#                 
#                 Ex. predecting an email as a spam or not a spam.
#                 
# reinstall party package to create a decision tree
# 
# it is function seetree which is use to create and analyse the decision tree
#     1- formula
#     2- data
#     
# Ex. conider dataset readingSkills(is describes core of someones reading skills if we know the 
#                                   the variables age, shoe size , score wheather the person is
#                                   native speaker or not)

install.packages("partykit")
install.packages("sandwich")
library("sandwich")
library("party")
library(partykit)
?ctree()


readingSkills
v=ctree(nativeSpeaker ~ age + shoeSize + score,data=readingSkills)
v
plot(v)
