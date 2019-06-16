vec=c(1:6)
print("Enter number to check in vector")
no=as.integer(readline())


'%findFun%'=function(vec,no)
{
  for (i in vec) 
  {
    if(i==no)
      return(TRUE)
  }
  return(FALSE)
  
}


'%findFun%'(vec,no)
