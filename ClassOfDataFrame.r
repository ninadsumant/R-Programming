no=c(1:3)
name=c("Monu","Himanshu","Palash")
marks=c(75,76,77)
dframe=data.frame(no,name,marks)
dframe

colnames=names(dframe)
colnames

for (i in dframe)
  {
  classc=class(i)
  print(classc)
}
  
