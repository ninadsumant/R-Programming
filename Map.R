
install.packages("raster")
install.packages("sp")
library("raster")
library("sp")
?raster
?raster()
?sp
r1<-raster(nrows=108, ncols=21, xmn=0, xmx=10)
r1

# The base data for maps,polygons that define the country the state districts even taluka's available
# from an organization called global administrative areas or gadm.org
# country levels files for almost all countries are available in various formats 
# and are at 3 levels 


ccodes()
a=getData('GADM',country="IND",level=0)
a
b=getData('GADM',country="IND",level=1)
b
c=getData('GADM',country="IND",level=3)
c

getdata about global boundries and directly downloads into R  and level is level of subdivision
there are 0,1,2

install.packages("RColorBrewer")
library("RColorBrewer")
plot(a,col="blue",main="india")
?RColorBrewer
plot(b,col=brewer.pal(8,"Pastel1"),main="india")
plot(s,col=brewer.pal(8,"Paired"),main="Gujarat")
d=subset(c,c$NAME_1=="Maharashtra")
g=subset(c,c$NAME_1=="Gujarat")
g
s=subset(c,c$NAME_1=="Surat")
s

display world climate annual mean temprature across the world

w=getData("worldclim",var="bio",res=2.5)
w

$bionum1,col="",annual mean temprature