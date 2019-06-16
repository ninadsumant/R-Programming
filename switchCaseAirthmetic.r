print("Enter airthmetic operator")
op=as.character(readline())

no1=print("Enter first number")
no1=as.integer(readline())

no2=print("Enter second number")
no2=as.integer(readline())


switch(op,'+'=print(no1+no2),'-'=print(no1-no2),'*'=print(no1*no2),'/'=print(no1/no2),'%'=print(no1%%no2))