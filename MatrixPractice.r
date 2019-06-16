vect=c(1,10:15)
vect

vect1=c(1:3,letters[1.:10])
vect1

intVec=c(1:5)
charVec=c(letters[1:5])
logicVec=c(TRUE,FALSE)

combVec=c(intVec,charVec,logicVec)
combVec

names(combVec)=LETTERS[1:12]
combVec


seq(1,5,by=0.1)

mat=matrix(c(1:9),3,3,byrow=TRUE)
mat

singVec=c(2)
mat=singVec*mat
mat

mat2=matrix(c(11:19),3,3,byrow = TRUE)
matAdd=mat+mat2
matAdd

matMult=mat%*%mat2
matMult

matT=t(matMult)
matT

matUnit=matrix(1,3,1)
matUnit

zeroMat=matrix(0,3,2)
zeroMat

diagMatVec=diag(mat)
diagMatVec

digMat=diag(diagMatVec)
digMat

rownames(mat)=c("a","b","c")
mat

colnames(mat)=c("d","e","f")
mat

mat[3,1,drop=FALSE]


mat
mat[3,2]
mat2
rownames(mat2)=c("a","b","c")
colnames(mat2)=c("p","q","r")
mat2

mat2=rbind(mat2,c(20,21,22))
mat2

rownames(mat2)=c("a","b","c","d")
mat2

multiList=list(eno=c(1:3),ename=c("a","b","c"))
multiList

multiList[[1]][2]

names(multiList)=c("eno","ename")
multiList


fact=1
print("Enter a number")
no=as.integer(readline())

for(i in 1:5)
{
  fact=fact*i
}
fact


matAir=matrix(AirPassengers,12,12,byrow = TRUE)
matAir
rownames(matAir)=c(1949:1960)
colnames(matAir)=c(month.abb)
matAir[2:12,1:12,drop=FALSE]


mat1 = matrix(1:9,3,3)
for(i in seq_len(nrow(mat1)))
{
  for(j in seq_len(ncol(mat1))){
    print(mat1[i,j])
  }
}
