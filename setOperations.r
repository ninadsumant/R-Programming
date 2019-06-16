
set1=c("some","random","number")
set3=c("some","random","some")
set2=c("some","random","is","writtern")
union(set1,set2)

intersect(set1,set2)

setdiff(set1,set2)
setequal(set1,set3)
identical(set1,set2)

elem1="some"
elem2="how"

is.element(elem1,set1)
is.element(elem2,set1)

elem1%in%set1
elem2%in%set1
