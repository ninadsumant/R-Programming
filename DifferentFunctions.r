function()
{
  n=as.integer(readline(prompt = "Enter any number"))
  fact=1
  for(i in 1:n)
  {
      fact=fact*i
  }
  print(paste("Factorial is ",fact))
} 
multi<- function()
{
  no=as.integer(readline(prompt = "Enter no to print its multplicatio table "))
  mult=1
  for(i in 1:10)
  {
    mult=no*i
    print(paste(no,"X",i,"=",mult))
  }
}
multi()

primeno <- function()
{
  flag=1
  num=as.integer(readline(prompt = "Enter no to check prime"))
  mult=1
  i=1
  temp=num-1
  for(i in 2:temp)
  {
    if(num%%i==0)
    {
      
      flag=0
      break
    }
  }
  ifelse(flag==0,"no is not prime","no is prime")
}
primeno()


fibonacci<-function()
{
  f1=0
  f2=1
  f3=0
  num=as.integer(readline(prompt = "Enter a number"))
  print(f1)
  print(f2)
  while(num>0) {
    f3=f1+f2
    print(f3)
    f1=f2
    f2=f3
    num=num-1
  }
}
fibonacci()

SumOfN<-function()
{
  n=as.integer(readline(prompt = "Enter a number"))
  i=1
  sum=0
  repeat
  {
    sum=sum+i
    i=i+1
    if(i>n)
    {
      break
    }
    }
  print(sum)
}
SumOfN()

SumOfDigit<-function()
{
  n=as.integer(readline(prompt = "Enter a number"))
  sum=0
  rem=0
  while(n>0)
  {
    rem=n%%10
    sum=sum+rem
    n=n%/%10
    
  }
  print(paste("Sum of digits is : ",sum))
}
SumOfDigit()

PerfectNumber=function()
{
  n=as.integer(readline(prompt = "Enter a number"))
  temp=n-1
  sum=0
  for(i in 1:temp)
  {
    if(n%%i==0)
      sum=sum+i
  }
  if(sum==n)
    print("No is perfect ")
  else
    print("No is not perfect")
}
PerfectNumber()