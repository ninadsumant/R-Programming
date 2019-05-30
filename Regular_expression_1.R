#6-3-19

#Regular expression - is a pattern that descibes a set of strings
#                     It conisit of a combination of alpha-numeric characters as well as special characters

#operations for creating regular operations
#   there are 4 basic operations to create regular expression
#1. Concatenation - the basic type of regular expression is formed by concatinating a set of characters 
#                   together eg.-"abcd"
#   this regex pattern match only the single string "abcd"
#2. logical or - the logical operater or denoted by | allows to select from one of the serveral possibilities eg."ab|cd"
#3. repeatition -  it enables to define pattern that matches under multiple possiblities. 
#                 This operation is carried out using series of regex operators known as quanitifiers 
#   which repeat the preceding regular expression for specific no. of times
#4. grouping - The grouping operator denoted with an expression inside () enables us to specify any number of other operators and characters as a unit eg:(xy)**


#Pattern matching functions

#1. grep()- allows us to match a pattern in a string vector .
#  1st argument is regular expression that specifys pattern to be matched 
# 2nd argument is a character vector
#  the output is the indices of the elemnts of the text for which there is a match ,if there is no match then output is empty integer vector

v=c("one single word","a sentences","three two one","hello hi")
pat="one"
grep(pat,v,value = TRUE)

#2. grepl() - the task of grepl() is same as grep() the difference is in the output 
#             i.e. it does not show numeric indices by logical values(True or False)

grepl(pat,v)

#Note that we get a logical vector of the same length as the charcter vector

#3. regexpr() - is used to find exactly where the patern is found in a string 
#  it returns
#1. the elemnts of the text vector that contain the regex pattern
#2. identifies the position of substrig i.e matched by regular expression
v=c("one single word","a sentences","three two one","hello hi one")
v
regexpr(pat,v)

#the output displays 3 elements 
#1.integer vector of the same length as text giving the starting postion of first match
#2.the atribute match.length gives us the length of the match in each element of the text
#the attribute use bits has a value True which means that the matching was done bit by bit rathers than character by character

#4. gregexpr() - it is same as that of regexter the only differences is that greg expresion has output 
#                in form of list that is it 
#returns a list of same length as that of text where each elememt is same form as a return value for regexpr
gregexpr(pat,v)


#5. regexec()- it is similar  to greg expression the output is also a list as same length of the text 
#each element of list has the attribute match.length giving the lengths of the match found or -1 otherwise

regexec(pat,v)

#PATTERN REPLACEMENT FUNTIONS

#1. sub(pattern,replacement,text) -this function is used to replace the 1st occurance of a pattern in a given text
#i.e if there is more than one occurabce of the pattern in each element of the string vector only the 1st one will be replaced

s1=c("the r foundation","r is free software","r is collaborative project")
sub("r","rr",s1)


#2. gsub() - this finction is used to replace all occurances of a pattern in a given text 

gsub("r","rr",s1)


#Q. consider a string "my roll no is 0018" extract digits from a string of characters

s2=c("my roll no is 0018")
ppat="0018"
gsub(pattern = "[^0-9]","",s2)

