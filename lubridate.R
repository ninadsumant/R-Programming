install.packages("stringr")
library(stringr)
#Q)consider a string vector "65 to 69" "70 to 74" "95 to 99" "58 to 60" exctract only first digit into the range
s="65 to 69"
s1="70 to 74"
s2="95 to 99"
s3="58 to 60"
z=c(s,s1,s2,s3)
z
str_extract(z,"[[:digit:]]+")

#Q)create address vector which consist of five address
a="a-4 Laxmi society morabhagal surat"
a1="27 devchakra row-house jahangirpura surat"
a2="3b pachshil app bhagl surat"
a3="b401 mac street block 1 USA"
a4="c101 tac street block 2 maldivs"

#1)replace capitalized letter with lowercase letters
z1=c(a,a1,a2,a3,a4)
str_to_lower(z1)

#2)extract numeric part of the address vector
str_extract_all(z1,"[[:digit:]]+")

#3)aplit address vector into two parts and the result store in matrix


install.packages("lubridate")
library(lubridate)
#Q)consider lubridale package and write solution for following
#1)consider a vriable which consist of date represntation of a string.extract day part,month part and year part from the 
#variable
s="today date is 2019-03-18"
s=ymd(s)
s

#extract day month and year
day(s)
month(s)
year(s)

#2)consider the same variable and set month to april.add seven days to this variable and display the result.subtract four
#months from the variable(ymd function)

#add seven days
s+days(7)

#set month four
month(s)=04
s

#subtract four month
month(s)=month(s)-4
s


#Q)consider a list which consist of vector in range 1-5 and 8-4.
#It consist of matrix
a=c(1:5,8:4)
a
m=matrix(c(1:4),2,2)
m
l=list(a,m)
l
#1)dispaly the length of vector and matrix
length(a)
length(m)
lapply(l,length)

#2)display the sum of vector and matrix
sum(a,m)
lapply(l,sum)

#3)diplay the class of elements present in the list
lapply(l,class)

#4)write a user define function to squre a number aplly this function to the list elements.
sqr=function(s)
{
  return(s*s)
}
lapply(l,sqr)

#5)print the list and convert the output to a vector.
lapply(l,c)