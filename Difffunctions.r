str1="hello"
str2="how"
str3="are you"

print(paste(str1,str2,str3))

print(paste(str1,str2,str3,sep="-"))

print(paste(str1,str2,str3,sep="",collapse=" "))

print(str3)
print(str3,quote=FALSE)

str4=noquote(c("hello","how","are","you"))

res=noquote(str4)
class(res)
res

res[2:3]


cat(str4)

cat(str4,"Monu")

cat(1:10,sep="-")

cat("long string","can be displayed","by using","fill arguments",fill=30)

cat("long string","can be displayed","by using","fill arguments","fill=30",file="output.txt")

format(35.1234567899,digits = 6)

format(35.1234567899,scientific = TRUE)

format(35.1234567899,nsmall =6)

format(6)

format(25.54,width = 100)

format("Hellow world",width=10,justify = "l")
format("Hellow world",width=10,justify = "r")
format("Hellow world",width=10,justify = "c")
format(123456789,big.mark = "-")

sprintf("%f",pi)

sprintf("%3f",pi)

sprintf("%1.0f",pi)

sprintf("%3.1f",pi)

sprintf("%05.1f",pi)

sprintf("%+f",pi)

sprintf("%-10f",pi)

sprintf("%e",pi)

sprintf("%E",pi)

sprintf("%g",pi)

toString(18.04)

toString(c(18.04,1979))

toString(c("Hello",18.04,TRUE,NA))

toString(c("one","two","three"),width = 12)


str1="hello how are you"
casefold(str1,upper = TRUE)


chartr("a","A","This is a string")

chartr("aey","%!#",str1)

colnam=colors()[1:5]
colnam

abbreviate(colnam)
