
  View(mtcars)
  matCar=data.frame(mtcars)
  print(matCar)
  for(i in 1:length(matCar))
  {
    if(matCar[i,1]>15 && matCar[i,1]<20)
    {
      print(matCar[i,])
    }
  }
  for(i in 1:length(matCar))
  {
    if(matCar[i,2]==6 && matCar[i,9]>0)
    {
      print(matCar[i,])
    }
  }
  for(i in 1:length(matCar))
  {
    if(matCar[i,10]==4 || matCar[i,11]==4)
    {
      print(matCar[i,])
    }
  }
  for(i in 1:length(matCar))
  {
    if(i%%2==0)
    {
      print(matCar[i,])
    }
  }



