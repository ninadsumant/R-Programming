character()

#2empty string
#when u use empty string then output is 1 but emptycharacter then output is 0

emptystr=" "
class(emptystr)
emptystr
length(emptystr)

#3 create empty chracter vector

character(0)
length(character(0))
emptychar=character(0)
length(emptychar)

#crete character vector

ch=character(7)
ch
#ch[8]="Eight"
ch1=character(0)
ch1
ch1[1]="one"
ch1[4]="four"


#count no of character

str11="Hello vrund"  #count the space
nchar(str11)
result=nchar("vrund shah") #not count the space
result

#change case(upper to lower and lower to upper)

res=toupper("vrund")
res
toupper(res)
result=tolower("VRUND")
result

#replace substrings,substr(),syntax:substr(charvector,start,stop)

str1="hi vrund shah"
substr(str1,4,7)
substr("vrundshah",1,2)
z=c("may","god","bless","you")
substr(z,2,3)=c("#","@")
z

#replace 2nd letter with hash symbol
str="vrund"
substring(str,2)<-"#"
str



#replace 2 and 3 letter with :)
str2="vrund"
substring(str2,2,3)<-":)"
str2

#-----or------#
substr(str2,2,3)=c(":)")
str2


#substring function#

substring("abcdefg",1:5,1:7)

res=substring("Extracts Character",10,15)
res

#multiple replacements
text1=c("there","is","no","replacement","for","hard","work")
substring(text1,1:3)=c("$","88")
text1

#set operations

#1 union(common word exit hoge)
set1=c("some","random","words")
set2=c("some","many","none","few")
union(set1,set2)

#2 intersect(common words)
set3=c("some","random","words")
set4=c("some","many","none","few")
intersect(set3,set4)

#3 setdiff()
setdiff(set3,set4)

#4 setequal()
set7=c("some","random","strings")
set8=c("some","many","none","few")
set9=c("strings","random","few")
setequal(set7,set8)
setequal(set7,set9)

#5 identical
identical(set7,set7)


#iselement

set10=c("i","like","to","play","cricket")
e1="play"
e2="crazy"
is.element(e1,set10)
is.element(e2,set10)


#%in%(it is used to test whether an element in present in the given set it returns true if the first operand in present in the second other wise returns false)

e1%in%set10
e2%in%set10

#example of paste()

str1="hello"
str2="how"
str3="are you"
print(paste(str1,str2,str3))
print(paste(str1,str2,str3,sep="-"))
print(paste(str1,str2,str3,sep="",collapse=""))

#printing characters

str23="hi hello"
print(str23)
print(str23,quote=FALSE)

#aleternative

noquote(str23)
res=noquote(c("some","quoted","text","!%"))
res
class(res)
is.character(res)
res[2:3]
#noquotes:= This function print character string with noquotes . It creates a character object of class "noquote".

#cat is use  to cocatination the object and print them either on screen or to a file 

cat(str23)
cat(str23,"R Programming")
cat(str23,"R Programming",sep="=")
cat(1:5,sep="-")
cat("Long String","can be displayed","by using","fill argument",fill=30)
cat(str23,"R Programming",file="output.txt")
getwd("output.txt")

?getwd()

#format use to format number and to a specific style 

result=format(35.123456788,digits=6)
print(result)

#display the number in scientific notation

res=format(c(7,1.12345),scientific = TRUE)
res

#min no

result=format(25.54,nsmall = 6)
result

#The minimum no of digits to the right of the decimal point as set

#treat as a string

result=format(6)
result
class(result)


#number padding

result=format(25.54,width=10)
result

#left,centre,right justify
#justify argument iss not applicable to numeric values


result=format("Hello",width=10,justify="l")#left  
result

result=format("Hello",width=10,justify="c")#centre 
result

result=format("Hello",width=10,justify="r")#right  
result

format(123456789,big.mark =",")


#it returns the formatting string combining 
#text and variable values the argument fmt is a 
#character vector of format strings the allow 
#conversion specifications start with percentage
#symbol followed by numbers and vectors
pi
sprintf("%f",pi)
sprintf("%.3f",pi)
sprintf("%1.0f",pi)
sprintf("%3.1f",pi)
sprintf("%05.1f",pi)
sprintf("%+f",pi)
sprintf("%f",pi)
sprintf("%-10f",pi)
sprintf("%e",pi)
sprintf("%E",pi)
sprintf("%g",pi)
a=12345678

#tostring - is allow the convert to R object to a character string.

toString(18.04)
toString(c(18.04,1979))
toString(c("Hello",18.04,TRUE,NA))
toString(c("one","two","three"),width = 14)

#Convert case with casefold
#that is from upper to lower and vise versa and case fold function is use

casefold(str23,upper=TRUE)

#character translation with chartr() - is use to replace the characters present in the old string with the new string
#there is three argument old string , new string ,character vector

chartr("a","A","this is a string")

str24="Hello hi everyone aauu"
chartr("aei","#!?",str24)

#abbreviate string(sort form of colors name)

colrname=colors()[1:5]
colrname
colrs1=abbreviate(colrname)
colrs1
