

#calculate mean and medianfro var. y2011
library(dplyr)
data = read.csv("income.csv", sep = ",")

summarise(data, mean(data$Y2009),median(data$Y2009))

#arrange Index in decreasing order
arrange(data,desc(Index))

#display 10 random obs. of variable index and state from the data set using pipe (%>%) operator
#find squareroot of 16 and add wwith 18
16%>%sqrt()%>%+19

select(data,Index,State)%>%sample_n(10)


#group data by using Index variable
group_by(data, Index)

#using pipe summerise group and sort; compute mean of vars. y2014 & y2015 by Index
#then sort the result by calculated mean var 2015

m1=mean(data$Y2014,na.rm=TRUE)
m2=mean(data$Y2015,na.rm=TRUE)
m1
m2

group_by(data,data$Index)%>%summarise(data,mean(Y2015))%>%sort(m2,decreasing = FALSE)

#mutate
m=mutate(data,difference=Y2013-Y2012)
m


#create dataframe1 which has id=c(1,2,3,4,5), var1 = c('a','b','c','d')
#var2 = c(1,1,0,0,1), var3= 5 random numbers, var4 =letters[1:5]

#df2 = id=c(1,7,3,6,8), var1 = c('z','b','k','d','i')
#var2 = c(1,2,3,0,4), var3= 5 random numbers, var4 =letters[2:6]


df1 = data.frame(id=c(1,2,3,4,5), var11 = c('a','b','c','d','e'),var12 = c(1,1,0,0,1), var13=rnorm(5),var14 =letters[1:5])
df1
df2 = data.frame(id=c(1,7,3,6,8), var21 = c('z','b','k','d','i'),var22 = c(1,2,3,0,4), var23=rnorm(5),var24 =letters[2:6])
df2

k=inner_join(df1,df2,BY=id)
k

#left_join(),right_join
#full_join(), semi_join(), anti_join()


#for reshaping data, data manipulatio in conjunction with dpyr
#data is said to be tidy if each column represents a var and each row represents obsv.
#following functions are used
library(tidyr)
data = mtcars
#use dataset mtcars 
#include names of car in col. of carname
data$carname = rownames(data)
data
#converts wide data to longer format similar to melt
l=data%>%gather(key="data",value ="measure", -carname)
l
#in converts long data to wider format similar to cast
v=l%>%spread(data,measure)
v

#combines 2 or more cols. into single column
unite()

#splits 1 column in to 2 or more columns
separate()
