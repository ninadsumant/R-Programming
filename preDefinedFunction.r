ifelse(sqrt(9)<2,sqrt(9),0)

ifelse(sqrt(100)>9,sqrt(100),0)

x=12
if(is.numeric(x))
  y=x*2
y

z=6
if(z<0)
{
  y=z*3
}else
{
  y=z*5
}
y

x=15
y=3
if(is.numeric(x))
  if(is.numeric(y) & y!=0)
    z=x/y
z

x=letters[20]
if(is.numeric(x))
  print("Is numeric");
if(is.character(x))
  print("Is character");

z=='i'
if(z%in% letters)
{
  if(z=='a')
  {
     n=1
  }else if(z=='e')
   { n=2
  }else if(z=='b')
   { n=3
  }else if(z=='i')
   { n=4
  }else
  {
    n=5
  }
}
    n