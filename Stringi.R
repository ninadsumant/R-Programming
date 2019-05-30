#28-2
#stringi package - it is apackage that provides replacements for all the character string processing functions from base R 
#it also includes text sorting,text comparing,extracting word,sentences and character replacing srings etc.

#to count no. of words stri_count_words() 

#create 2 strings and display the number of words present on string 1 and 2


install.packages("stringi")
library("stringi")

st1="ankita karande"
st2="hello hi bye"
stri_count_words(st1)
stri_count_words(st2)
stri_count_words(c(st1,st2))

#str_duplicated() function is used to find duplicate string
#Q. Create a string which consist of duplicate values

stri_duplicated(c(st1,st2))
?stri_duplicated
stri_duplicated(c("a","a","a",NA,"v","a"),fromLast = TRUE)
stri_duplicated(c("a","a","a",NA,"v","a"))

#to generae random strings there are many functions available in stringi 
#stri_rand_strings(2,5)

stri_rand_strings(2,5)

#stri_rand_shuffle() it randomly shuffles character in text

stri_rand_shuffle(st1)

#create 2 strings and extract words from it

stri_extract_all_words("stringi: THE string processing package 123.48...")

#Q. create a character  vector which stores names of scientists and 
#   display no. of characters present in this vector also display duplicate names

sci=c("ankita","aditi","vrund","nisha","aditi patil","vrund shah")

stri_count_words(sci)
stri_length(sci)
stri_duplicated(sci)

#Q. create a string and determine starting and end index of first and last word

?stri_locate_first_words()
stri_locate_first_words("b for ball")
stri_locate_last_words("a for apple")

#Q. CREATE A STRING eg. "students must study regularily " replace must with don't

stri_replace_all_fixed("students must study regularily","must","don't")
