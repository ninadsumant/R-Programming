#1)no of character
cn=c("abcdefghijklmnopqrstuvwxyz")
nchar(cn)

#2)combine character
com=c("yash patel")
cat(cn,com)

#3)
x=1
repeat {
  print("hello")
  x = x+1
  if (x == 4){
    break
  }
}

#4)
i=0
j=0
for(i in 1:3)
{
  for(j in 1:4)
  {
    if(j==3)
    {
      break
    }
    print(paste0("i=",i,"& j=",j))
  }
}

#5)
a=0
while(a<6)
{
  a=a+1
  if(a==3)
  {
    next
  }
  print(a)
}

#6)
str="she sells sea shell by the seashore,the shells she sells are surely sea shells,so if she sells shell on the seashore,i am sure she sells seashore shells"
str1=c("she", "sells", "sea", "shell", "by", "the", "sea", "shore,", "the", "shells", "she", "sells", "are", "surely", "sea", "shells,", "so", "if", "she", "sells", "shell", "on", "the", "sea", "shore,", "i", "am", "sure", "she", "sells", "sea", "shore","shells")
str2=str1
toString(str2)
nchar(toString(str2))
j=1
while(j<=max(nchar(str1)))
{
  print(paste0("length of word : ",j))
  for(i in str1){
    if(j==nchar(i))
      print(i)
  }
  j=j+1
}

#7)potition of character
fun=function(str)
{
  for(i in 1:nchar(str))
  {
    c=0
    for(j in letters)
    {
      if(substr(str,i,i)==j)
      {
        print(paste(substr(str,i,i),":",c+1))
        break
      }
      c=c+1
    }
  }
}
fun("abc")