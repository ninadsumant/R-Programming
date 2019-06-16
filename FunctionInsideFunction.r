sq=function(no,vect,mat)
{
  sqr=no*no
  if(dim(mat)[2]!=length(vect))
  {
    stop("Can't multiply")
  }
  vari=vect*mat
  res=vari*sqr
  ret=list(sqr,vari,res)
  return(ret)
}
main=function()
{
  vect=c(1:3)
  mat=matrix(c(1:9),3,3,byrow = TRUE)
  var=5
  total=sq(var,vect,mat)
  print(total)
}

debug(main)
main()
