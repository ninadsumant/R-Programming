
num=as.integer(readline(prompt = "Enter the number"))
fact=1
for(i in 1:num)
  fact=fact*i

print(fact)
  
#-------------------------------------------
mult=as.integer(readline("Enter a number"))

for(i in 1:10)
  
  pri(mult)

#-----------------------------------------
#Example 1

var1=c("a","b","c","d")
  for(i in seq_along(var1))
    print(var1[i])

#Example 2

mat1=matrix(1:6,3,3)
for(i in seq_len(nrow(mat1)))
{
  for(j in seq_len(ncol(mat1)))
  {
      print(mat1[i.j])    
  }
}

#fibonnaci Series------------------------
user_input=as.integer(readline(prompt = "Enter a number"))
n1=0
n2=1
count=2
if(user_input==1)
{
  print("Fibo Series")
  print(n1)
}else
{
  print("Fibo Series")
  print(n1)
  print(n2)
  while(count<user_input)
  {
    n3=n1+n2
    print(n3)
    n1=n2
    n2=n3
    count=count+1
  }
}

#Sum of NAtural numbers----------------------

input1=as.integer(readline(prompt = "Enter a number"))
sum=0
if(input1<0)
{
   print("Please enter a positive")
}else
{
  while(input1>0)
  {
    sum=sum+input1
    input1=input1-1
  }
  print("Sum of natural numbers")
  print(sum)
}

#sum of digits-------------------------

input2=as.integer(readline(prompt = "Enter a number"))
sum_of_digit=0
while(input2>0)
{
  sum_of_digit=sum_of_digit+input2%%10
  input2=input2/10
}
print(as.integer(sum_of_digit))

#function------------------

add=function(no1,no2)
{
  no1+no2
}
add(1,14)


#----------------------------------------------------

ifelse(sqrt(9)<2,sqrt(9),0)
#---------------------------------
ifelse(sqrt(100)>9,sqrt(100),0)
#--------------------------------
x=12
if(is.numeric(x))
{
  y=x*2
}
print(y)

#-------------------------------

z=6
if(z<0)
{
  y=z*3
}else
{
  y=z*5
}
print(y)

#------------------------------
x=15
y=3
if(is.numeric(x))
  if(is.numeric(y)%%y!=0)
    z=x/y
print(z)

#---------------------------
x=letters[20]
if(is.numeric(x))
{
  print("Is numeric")
}else if(is.character(x))
{
  print("is Character")
}

#------------------------------

z='i'
if(z %in% letters)
{
  isz='a'
  n=1
}else if(z=='e')
{
  n=2
}else if(z=='i')
{
  n=3
}else if(z=='o')
{
  n=4
}else
{
  n=5
} 
print(n)