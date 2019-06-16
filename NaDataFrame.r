SalesData=function()
{
    name=c("Pixel","Letv","Asus",NA,NA)
    salesVal=c(7.6,2.3,9.1,8.6,2)
    price=c(26000,12000,12000,200,6000)
    product=data.frame(name,salesVal,price)
    product
    for(i in 1:5)
    {
      if(!is.na(product[i,1]))
      {
        remove(product[i,1])
      }
    }
    product2
}
SalesData()
