f=factor(c("male","female","female","male","male","male"))
f
table(f)
fact1=factor(c("XS","S","M","XL","XXL"))
fact1

level_custom=factor(fact1,levels=c("XS","S","M","XL","XXL"))
level_custom
nlevels(fact1)

vec1=c("B","AB","O","A")
vec2=c("O","O","A","B")
fact2=factor(c(vec1,vec2))
fact2

c1=c(1,2,3,4,5)
c2=c(TRUE,FALSE,TRUE,TRUE,FALSE)
c3=c("A","B","C","D","E")
df=data.frame(c1,c2,c3,stringsAsFactors = FALSE)
df[1,2]
st=str(df)
st
nrow(df)
ncol(df)
head(df)


age=c(18,34,21,22,55)
height=c(151,162,155,180,177)
weight=c(50,47,55,61,54)
gender=c("Male","Female","Female","Male","Male")
data_frame=data.frame(age,height,weight,gender,stringsAsFactors = FALSE)

typeof(data_frame)
class(data_frame)

data1=data.frame(Orange)
nrow(data1)
ncol(data1)
head(data1)
typeof(data1)
class(data1)
