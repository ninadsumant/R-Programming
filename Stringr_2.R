install.packages("stringr")
install.packages("stringi")
library(stringr)
library(stringi)
#Q)consist of space and remove space from it.
s="Yash patel"
sub(" ","+",s)

#Q)consist of key value pair extract string which are available in keyvalue pair.
s2=c("yash:patel","harsh:shah","shivani")
s1
s1[grep(":",s1)]

#Q)cosiste of "current year is 2019" find gigit and display it.
s1="The current year is 2k19 "
grepl("[0-9]",strsplit(s1,"")[[1]],value=TRUE)
stringr::str_locate_all(s1,"[0-9]")


#Q)create a variable called pattern & implement the requried pattern for finding one gifit & one alphanumeric character in 
#the given variable text.
b=grep("",str_match_all(s1,"[0-9][a-z]"),value = TRUE)
grep("[0-9]",strsplit(b,"")[[1]],value=TRUE)
grep("[a-z]",strsplit(b,"")[[1]],value=TRUE)

str_match_all(s1,"[0-9]")


#Q)create a pattern that checks if there is lowercase charecter followed by any character & than by a digit in the given 
#text

b=grep("",str_match_all(s1,"[0-9][a-z]"),value = TRUE)
grep("[0-9]",strsplit(b,"")[[1]],value=TRUE)
grep("[a-z]",strsplit(b,"")[[1]],value=TRUE)


#Q)find folowing pattern one space following by two lowercase letter & one more space use a function that returns 
#the starting point of fouind string & place it's result in a variable

a5="he  sh  loo Heuiyd D"
str_match_all(a5,"[' '][a-z][a-z][' ']")

#Q)consider a followin states =rownames(USArrests) count the no of character s that each elemt of the object states 
#has and save it in an object called cound.
  #1)using the object count find the position the element in the object states taht has the most amount character and 
  #obtain the states or state with the most amount of characters.
  #2)using the function grep obtain the position of the states that have in their name the word "New"

df=USArrests
rname=rownames(df)
count=nchar(rname)
names(count)=rname
count[max(count)==nchar(rname)]
count[min(count)==nchar(rname)]
rname[grep("New",rname)]


