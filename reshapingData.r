
#reshaping data is comon task in data analysis
#data reshaping involves rearrangement of the form, not the contents of the data
#for the purpose of reshaping we divide vars. in 2 groups. 1st is identifier.
#these vars. identify the unit of measurements that take place on they are ususally decrete and fixed by design
#2nd is measured variable: represents what is measured on that unit. 

#melting and casting in R
#reshape package is used under there are 2 func. melt() and cast()
#1.melt() : it takes data in wide format and stacks a set of cols. into a single col. data.
#the arguments to this fun. are data.frame(), id vars. and measured vars.
#e.g : install reshape package use data ships apply function melt() id var = type and year


library(reshape)
library(MASS)
data = head(ships,n=10)
var=melt(data,id=c("type","year"))
var

#aggreagation occures whenthe combination of the variables in the cast function does not idenify individual observations
#in this case cast function() reduces multiple values to a single value by suming up the vals in the value column
#e.g : 

var1 = cast(var, type+year~variable,sum)
var1

library(reshape2)
dataf = head(airquality, n=20)
dataf
variable=melt(dataf,id.vars =c("Month","Day"))
variable

variable1 = dcast(variable, Month+Day~variable,sum)
variable1



#in reshape2 package melt takes wide format data and converts it into long format data
#while cast take long format data and converts it into wide format data

#e.g : use reshape2 package
#1. consider mtcars convert into long format by setting id var to cyl and gear
#2. convert dataset to wide format by using mean as aggreagation function

df = head(mtcars, n=20)
df
var=melt(df,id.vars =c("cyl","gear"))
var

var1 = dcast(var, cyl+gear~variable,mean)
var1


var2 = acast(var,cyl+gear~variable, mean)
