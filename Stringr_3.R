#install
install.packages("stringr")
library(stringr)

#this function is euivalent to paste but instead of using white space as the deafault separator it uses empty string 
str_c("i","am","studying","r")


str_c("I","am","studying","R ",NULL,character(0))

str_c("I","am","studying","R",sep="_")

str_join("I","am","studying","R")


#it returns no. of characters in a string equivalent to nchar
text=c("one","two","three",NA,"five")
nchar(text)
str_length(text)

fact=factor(c(1,1,1,2,2,2),labels=c(NA,"bad"))
fact
nchar(fact)
str_length(fact)
#compared to nchar() str_length() deals with NA differently it preserves missing valu just as NA instead of giving  NA as length of 2
#str_length converts factors to characters where as nchar is not able to handle factors

string="GOOD AFTERNOON"
str_sub(string,start = 1L,end = 5)
str_sub("hellohi",1:3)
text1=c("mangoissweet","appleisred","mobilecommunication")
str_sub(text1,start = -4,end = -1)
str_sub(text1,seq_len(nchar(text1)))
str_sub(text1,-seq_len(nchar(text1)))

#with negative indices or position str_sub counts backwards from the last character.use substring for the negative index
str_dup(string,times)
