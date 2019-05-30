# 7-3-19

#Regular expression Quantifiers
#Regular expression in r can be divided into 5 categories
#1. meta characters -  it is a set of special characters which regex doesn't capture.
#If any of the below mentioned characters appear in the string then regex 
#doesn't detect them unless they are prefixed with \\
#  .\ | () [] {} $ * + ? ^
  
   
sub("\\$"," ","$hello")

sub("\\."," ","hello.everyone")


# Quantifiers- They are used when we want to match a certain number of characters that meet certain criteria
#they specify how many instances of group or character class must be present in th input for a match to
#be found

# name    description
# .       it matches everything except new line
# ?       element to left is optional and is matched atmost ones
# *       element to its left will be matched 0 or more times
# +       element to its left is matched one or more times
# {n}     the element to its left is matched exactly n times
# {n,}    element to left is matched n or more times
# {n,m}   element to its left is matched atleast n times but not more then m times

the quantifies can be used with meta-character sequences and character classes to form complex patterns

cities=c("Pune","Mumbai","Nagar","Kolhapur","Ahmendabad")
grep(pattern = "a?",cities,value = TRUE)


Q. cosider the same string and match a exactly ones


grep(pattern = "a{0,1}",cities,value = TRUE)

grep(pattern = "a.",cities,value = TRUE)


#Q. match a 1 or more times , match a exactly twice

grep(pattern ="a.",cities,value = TRUE)
grep(pattern = "a{2,3}",cities,value = TRUE)


# sEQUENCES they consist of special characters used to describe a pattern in a given string

sequences          descrition
\d                 matches a digit character 
\D                 matches a non digit character
\s                 matches a space character
\S                 matches non-space character
\w                 matches a word character
\W                 matches non-word character
\b                 matches a word boundary
\B                 matches a non-word boundary

sub("\\d","_","Car bombing 2019")
gsub("\\d","_","Car bombing 2019")
 

sub("\\D","_","Car bombing 2019")
gsub("\\D","_","Car bombing 2019")

sub("\\s","_","Car bombing 2019")
gsub("\\s","_","Car bombing 2019")

sub("\\S","_","Car bombing 2019")
gsub("\\S","_","Car bombing 2019")

sub("\\w","_","Car bombing 2019")
gsub("\\w","_","Car bombing 2019")

sub("\\W","_","Car bombing 2019")
gsub("\\W","_","Car bombing 2019")

sub("\\b","_","Car bombing 2019")
gsub("\\b","_","Car bombing 2019")

sub("\\B","_","Car bombing 2019")
gsub("\\B","_","Car bombing 2019")


#cHARCTER CLASSES - it is set of characters enclosed in a square bracket .These classes match only the character enclosed in [] 
#They can be used in conjunction with quantifiers
if we use ^ in square bracket it nagest the expression and searches for everything except the specified pattern 

e.g consider a charcter vector mode_of_transport("air",) search for pattern ei in the mode of transport

mode_of_transport=c("airway","waterway","railway","roadway")

grep(pattern = "[ei]",mode_of_transport,value = TRUE)
