#Linear Regression
x=c(0,1,2,3,4,5)
y=c(3,5,7,9,11,13)
plot(y,x,col="blue")
cor(x,y)
var1=lm(y~x)
var1
summary(var1)


height=c(151,174,138,186,128,136,179,163,152,131)
weight=c(63,81,56,91,47,57,76,72,62,48)

#Q.build linear regression model, show summary explain difference between x and y using scatter plot. Assume x to height and y weight

plot(height,weight)
cor(x,y)
var2=lm(weight~height)
var2
summary(var2)
var2$residuals
mean(var2$residuals)
var3=170
df=data.frame(height=170)
var4=predict(var2,df)
var4

#R class and objects

var5=list(name="Aditi",age=22,gpa=8.9)
var5
class(var5)="Student"
var5
Student=function(n,a,g)
{
  if(g>10||g<0)
  {
    stop("GPA must in between 0 and 10")
    value=list(name=n,age=a,gpa=g)
    attr(value,"class")="Student"
  }
}

Student("Aditi",22,1)

setClass("Student",slots = list(name="character",age="numeric",gpa="numeric"))
#to create a object of class in s4 we use new function
s=new("Student",name="Aditi",age=22,gpa=8.9)
s
Student=setClass("Student",slots = list(name="character",age="numeric",gpa="numeric"))
Student
Student(name="Aditi",age=22,gpa=8.9)
slot(s,"name")="Prerna"
s
s@name

#synatx to create class under reference class

setRefClass("Student1",fields = list(name="character",age="numeric",gpa="numeric"))
obj=new("Student1",name="Ankita",age=22,gpa=9.0)
obj
