func1 = function(n1,n2)
{
  add=(n1+5)
  print(add)
}
func1(6)

func2=function(n3,n4)
{
  print(n3)
  print(n4)
}
func2(6)

sq=function(no)
{
  sqr=no*no
  return(sqr)
}
mat=matrix(c(4,3,2,5,7,2,5,8,9),3,3)
mat
vec=c(4,5,2)
sq(mat)

func3=function(no1)
{
  5*no1-1
}
func3(3)

func4=function(no1)
{
  res=5*no1-1
}
print(res)
func4(3)

matrix1=matrix(1:6,3,2)
matrix1
vector1=c(5,4,8,7,2,22,44)
vector1

func5=function(matr=matrix1,vect=vector1,scl=5)
{
  op_scalar=sq(scl)
  mult1=matr*vect
  res=op_scalar*mult1
   
}
func5(matrix1,vector1,5)

func6=function(sq_mat,vect2)
{
  tran=t(sq_mat)
  sqr=vect2*vect2
  result=list(tran,sqr)
  return(result)
} 
finalres=func6(sq_mat=cbind(c(1,2),c(3,4)),vect2=c(2,3))
print(finalres)

#extract elememts from list
finalres[[1]]

func7=function(num)
{
  if(num==0)
    return(1)
  else
    return(num*fact(num-1))
}
fact(5)
