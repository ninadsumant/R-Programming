DeathSet=function()
{
  ds=View(VADeaths)
  if(is.data.frame(ds))
  {
    print("Is a Data frame")
  }
  else
  {
    print("Not a data frame")
    dataF=data.frame(VADeaths)
    print("Converted Data set is : ")
    print(dataF)
  }
  total=0
  for (i in 1:5) {
    totalRMale=total+dataF[i,1]
    totalRFeamale=total+dataF[i,2]
    totalUMale=total+dataF[i,3]
    totalUFemale=total+dataF[i,4]
  }
  paste(print("Total Rural male : ",totalRMale))
  paste(print("Total Rural male : ",totalRFemale))
  paste(print("Total Urban male : ",totalUMale))
  paste(print("Total Urban male : ",totalUFemale))

}
DeathSet()
