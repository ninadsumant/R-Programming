

emptystr=character(7)
class(emptystr)
emptystr
length(emptystr)
emptystr[1]="one"
emptystr

str="How is the josh"

nchar(str)

toupper(str)
tolower(str)

ch=character(4)
z=c("may","god","bless","you","son","happy","life","ahead")
z
substring(z,1:3)=c("$","88")

substr(z,2,3)=c(":)")
z
substr(str,11,15)
res=substring(str,12,15)
res

