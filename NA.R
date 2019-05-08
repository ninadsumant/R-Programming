# Tuesday 19-2-2019
# NA questions

player=c("vrund","virat","Dhoni","pant","Raina")
runs=c(NA,100,23,78,NA)
cric=data.frame(player,runs)
cric

#1. is.na() - find the NA value and output in true.

is.na(cric)

#2 is.na in table format

table(is.na(cric))

#3 print the only na values

cric[!complete.cases(cric),]

#4 mean

mean(cric$runs)
mean(cric$runs,na.rm=TRUE)

#5 Omit = remove the na values and print the other values 

na.omit(cric)

#____________________________________________________________________

#General Quesitons

#Q-1 Consider a vector [1:k] where 'k' is a positive integer.
#    Display how many integers in the vector are exactly divisible by 3.

ivec=c(1,2,3,4,5,6,7,8,9)
ivec
i=ivec%%3==0
print(i)
ivec[i]

#or
div3=function(vect)
{
  for(i in vect)
  {
    if(i%%3==0)
    {
      print(i)
    }
  }
}

#Q-2 consider a vector having 6 values, out of which 2 values are 'NA'
# i) display length of vector.
# ii) remove all occurences of 'NA' in the vector.
# iii) replace all occurences of 'NA' with an integer value
# iv)  write a code that will return TRUE if it has missing values.

vec=c(1,2,3,NA,NA,6)
vec

#1.

length(vec)

#2

vec1=na.omit(vec)
vec1

#3

vec[is.na(vec)]=15
vec

#4

is.na(vec)


#Q-3 consider a vector which has 10 integer values out of which 3 are missaing values, caluculate sum of the vector.

vec10=c(1,2,3,4,NA,6,7,NA,9,NA)
sum(vec10,na.rm=TRUE)

#Q-4 consider a dataframe with names,sales & price. write a code that will return dataframe which removes
#all rows with missing values under names columns.

name=c("silk","cotton","soft")
sales=c(1,3,NA)
price=c(100,NA,200)
nsp=data.frame(name,sales,price)
nsp
na.omit(nsp)

#Q-5