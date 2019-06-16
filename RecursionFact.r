fact=function(num)
{
  if(num==1)
    return(1)
  else
  {
    return(num*fact(num-1))
  }
  print(fact)
}

fact(5)
