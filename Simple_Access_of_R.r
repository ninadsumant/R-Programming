a1=c(1,2,3)> a2=c("a","b","c")
 a3=c(TRUE,TRUE,FALSE)
 list(a1,a2,a3)

lst[[2]][3]="n"
lst

emp=list(eno=c(11,22,33),ename=c("nisha","yash","raj"))
emp

emp["eno"]
emp[1]
emp[c("eno","ename")]

emp$eno
emp$ename

emp2=list(eno=c(11,22,33),ename=c("nisha","yash","raj"))
emp2

emp2[c("eno","ename")]
str(emp2)

mnth=list(month.name)
mnth
mat=matrix(c(1:4),2,2)
mat
list2=c(12,3,5,"a","b",'c')
list2
mainlist=list(mnth,mat,list2)
mainlist

names(mainlist)=c("Month","Mat","intchar")
mainlist

mainlist[[4]]="Nisha"
mainlist

mainlist[[3]]="update"
mainlist




















