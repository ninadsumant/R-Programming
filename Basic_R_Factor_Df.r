fec=factor(c("Male","Female","Male","Female","Male","Female"))
fec
table(fec)

f=factor(c("small","XS","large","small","DoubleXL","XL"))
f
lel=factor(f,levels = c("small","Large","ExtreaLarge"))
lel

levels(f)
nlevels(f)

v1=c("B","AB","O","A")
v2=c("O","O","A","B")

ff=factor(v1,v2)
nlevels(ff)

vi=c(1:5)
vc=c("A","B","C","E","F")
vl=c(TRUE,FALSE,TRUE,TRUE,FALSE)
df=data.frame(vi,vc,vl,stringsAsFactors = FALSE)
df

df[1,3]
str(df)

nrow(df)
ncol(df)
head(df)

age=c(10,21,16,18,25)
height=c(150,180,195,157,160)
weight=c(60,45,68,90,39)
gender=c("Male","Female","Male","Female","Male")
human=data.frame(age,height,weight,gender,stringsAsFactors = FALSE)
human
typeof(human)
class(human)

data_org=data.frame(Orange)
data_org
nrow(data_org)
ncol(data_org)
head(data_org)
typeof(data_org)
class(data_org)















