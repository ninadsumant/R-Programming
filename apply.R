#apply()

#Q)consider a matrix which is 2*2 and stroe integer value apply min function on this.
e=matrix(c(1:4),2,2)
e
r=apply(e,2,min)
r

#Q)consider build in dataset BOD sum of each row ans columns and multiply all vlaue by 10.
BOD
b=apply(BOD,1,sum)
b
b=apply(BOD,2,sum)
b

mul=function(n)
{
  n*10
}
b=apply(BOD,1,mul)
b
b=apply(BOD,2,mul)
b


#Q)using lapply take column means for ozon,solar.r,wind for each dataframe.
lapply(airquality[c("Ozone","Solar.R","Wind")],mean)


#Q)consider build in dataset ariquality split this dataframe by month variable so that there are sprate dataframes.
split.data.frame(airquality,airquality["Month"])


#tapply()

#Q)consider dataframe whcih has age of 10 pasents drawn from five clincs using tappply() find mean age of clinic
age=c(21,68,45,98,34,45,62,81,20,11)
clinic=c("a","b","'c","d","a","f","g","b","i","j")
cp=data.frame(age,clinic)
cp


#sapply()

#Q)consider a list which has firt element as integer vector,second vector as 10 random number,third 20 random number 
#use sapply() to compute min

i=c(1:8)
i
r=c(runif(1:10))
r
r1=c(runif(1:20))
r1
l=list(i,r,r1)
l
sapply(l,min)


install.packages("openxlsx",dependencies = TRUE)
library(openxlsx)

#Q)create workbook object and named it as yash.create a seet object in wb named as iris asign it name seet1.seet name it was iris.
#Write bulid in dataset to iris seet without row names use add dataframe function.

wb=createWorkbook()
addWorksheet(wb,"sheet2")
names(wb)
sheets(wb)
writeData(wb,"sheet2",iris)
openXL(wb)
saveWorkbook(wb,"yash.xlsx",overwrite = TRUE)

#1)freeze the top row
freezePane(wb,"sheet2",firstActiveRow = 5,firstActiveCol = 3)
saveWorkbook(wb,"yash.xlsx",overwrite = TRUE)
openXL("yash.xlsx")

#2)set width of columns one throght 5 to 12.set the hearder in bold.using tapply genrate a table with the min of 
#pattel with by spices write to a new sheet called as pw from row to onwards

#width
setColWidths(wb,"sheet2",cols=1:5,widths = 20)
saveWorkbook(wb,"yash.xlsx",overwrite = TRUE)
openXL("yash.xlsx")

#bold
cs=createStyle(textDecoration = "bold")
addStyle(wb,"sheet2",cols = 1:5,rows = 1,cs)
saveWorkbook(wb,"yash.xlsx",overwrite = TRUE)
openXL("yash.xlsx")


