#27/2

#1.) find the vector length of orange using stringr functions
install.packages("stringr")
install.packages("babynames")
library("babynames")
d=data.frame(babynames)
d


#this function duplicates and concatinates string within a character vector
stringr::str_dup("hello",4)
stringr::str_dup("good evening",1:4)


#it is used to insert leading or traling characters to a specified total width.The default padding chaarcter is space
str_pad("hello",width=7)
str_pad("hello",width = 7,side = "both")
str_pad("hashtag",width = 8,pad = "#")
str_pad("hashtag",width = 8,side = "both",pad = "-")

#strsplit()this function splits the elements of a character vector into substrings according to the match found with the substring

x="HELLO HI BE BYE"
S=strsplit(x,"I",fixed = TRUE)
S

# input a string and diplay it in reverse order


a="ankita"
t = strsplit(a, split="")
t
res=nchar(a):1
res
test_rev=t[[1]][res]
test_rev

# input a string and check if palindrome or not

b="madam"
t = strsplit(b, split="")
t
res=nchar(b):1
res
test_rev=t[[1]][res]
test_rev=strsplit()


# 28-2

#str_detect(string,pattern) it detects presense or absense of a pattern in a string
#str_locate(string,pattern) t locates the first position of a pattern and returns a matrix with start and end
#str_extract(string,pattern) it extracts text corresponding to the first match
#str_match(string,pattern) it extracts capture group formed by paranthsis() from the first match
#str_replace(string,patern,replacement) it replaces the first matched pattern and returns acharacter vector
