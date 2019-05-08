#debug() with recursiv function
mat2=matrix(c(1:9),3,3,byrow = TRUE)
vec1=c(1:10)

fun5=function(matr,vec,scl)
{
  print(matr)
  print(vec)
  print(scl)
}

debug(fun5)
fun5(matr=mat2,vec=vecl,scl=3)

#stop() with recursiv function
mat2=matrix(c(1:4),2,2,byrow = TRUE)
vect2=c(1,2)
fun7=function(mat2,vect2)
{
  if(dim(mat2)[2]!=length(vect2))
  {
    stop("can't multiply")
  }
  prod=mat2%*%vect2
  return(prod)
}
fun7(mat2,vect2)

#sum of natural number with recursiv function
nature=function(n)
{
  if(n==0)
  {
    return(0)
  }
  return(n+nature(n-1))
}
nature(3)

#fibonacci with recursiv function
j=0
n=10
for(i in 1:n)
{
  print(fibo(j))
  j=j+1
}
fibo=function(n)
{
  if(n==0)
  {
    return(0)
  }
  else if(n==1)
    return(1)
  else
    return(fibo(n-1)+fibo(n-2))
}
fibo(3)

#switch()
switch(6,"R programming","F#","mobile communication","default")
switch("color","color"="red","shape"="square","yash")

m=as.integer(readline())
n=as.integer(readline())
c=readline("Enter the choice(+,-,*,/,%)")
switch(c,'+'=m+n,'-'=m-n,'/'=a%/%b,'%'=m%%n,'*'=m*n,"invalid choice")

#infix opretor
5+3
'+'(5,3)


#user define infix opretor
`%divisible%` <- function(x,y)
{
  if (x%%y ==0) 
    return (TRUE)
  else          
    return (FALSE)
}
10 %divisible% 3
10 %divisible% 2
`%divisible%`(10,5)

#pro1
a=c(1,8,9,10,20)
func=function(n)
{
  for(i in a)
  {
    if(i==n)
      return(TRUE)
  }
  return(FALSE)
}
func(2)

#pro2
df=data.frame("a"=c(1:9),"b"=c('a','b','c'),"boolean"=c(TRUE,FALSE,TRUE),stringsAsFactors = FALSE)
fun=function()
{
  c1=c(colnames(df))
  print(c1)
  for(i in 1:length(c1))
  {
    print(class(df[1,i]))
  }
}
fun()

#pro3

c1=c(34,56,78,34,10,50,5,9)
fun=function()
{
  sort(c1)
  c2=c1*2
  c2
}
fun()