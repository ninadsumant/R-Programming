FrameFun=function()
{
  vec=c(1,2,3,NA,NA,5)
  vecDF=data.frame(vec)
  length(vec)
  for(i in 1:6)
  {
    vec2DF=na.omit(vecDF)
    if(is.na(vecDF[i,1]))
    {
      print("Enter value to replace")
      v=as.integer(readline())
      vecDF[i,1]=v
    }
  }
  vec2DF
  vecDF
  
}
FrameFun()


