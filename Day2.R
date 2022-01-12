###R Syntax, Data Structures, Logics, and Loops
#R Boot Camp: Day 2, University of Essex
#Tuesday, Jan 11, 2021
#Saul Ringaila#####

#Learning Objectives: Basic R Syntax,
#Variables and tips on variable names,
#Data Types in R,Data Structures in R,
#Strings in R, Logic/Booleans, Operators,
#If/Else, While, For, Functions.


# Exercise 1
#Assign value for the variable
x <- 3

#Try changing the value of the variable x to 5. What happens to number?
x <- 5

#Exercise 2
#Assign value for variable y
x <- 55
#Change the value of the variable
z <- 100

# Exercise 3
#Create a vector of numeric and character values by combining the two vectors that we just created (hPrice and hQuality).
#Assign this combined vector to a new variable called combined. Hint: you will need to use the combine c() function to do this. Print the combined vector in the console, what looks different compared to the original vectors?
hPrice <- c(500, 450, 360, 400)
hQual <- c("Best", "Average", "Worst")
combined <- c(hPrice, hQual)

#Factors
hQuality <- c("Good", "Average", "Bad","Good", "Average", "Bad", "Bad","Good")
hQuality <- factor(hQuality)
hQuality
df <- data.frame(hPrice, hQuality)
list1 <- list(hPrice, df, hQuality)


#String Length
str <- "Hello Essex"
nchar(str)
str <- "Hello Essex!"

#Check a String
grepl("H", str)
grepl("Hello", str)
grepl("Y", str)

#Escape Characters
str <- "We play cricket in Lords and it is the home of Cricket"
str
str <- "We play cricket in \"Lords\" and it is the home of Cricket"
str
cat(str)

x <- c("Apple", "Banana", "Pear")
str_sub(x, 1, 3)

str_sub(x, -3, -1)

# Start and end with single quote
a <- 'I love Essex'
print(a)

# Start and end with double quotes
b <- "I love Colchester Campus"
print(b)

# Single quote ' in between double quotes
c <- "I parked my car ' near North Building"
print(c)

# Double quotes " in between single quote
d <- 'I parked my car " near South Building'
print(d)

###Here are a few example of invalid input strings:
  
  e <- 'Mixed quotes" 
print(e)

f <- 'Single quote ' inside single quote'
print(f)

g <- "Double quotes " inside double quotes"
print(g)
#Assign a String to a Variable
#Assigning a string to a variable is done with the variable followed by the <- operator and the string:

str <- "Hello Essex"
str # print the value of str

str <- "Hello Essex.
I came to attend this course from Mars.
Do you think it is worth learning R?
  I want to become Data Scientist on Mars."

str # print the value of str

str <- "Hello World!"
nchar(str)
str <- "Hello Essex!"

#Check a String
grepl("H", str)
grepl("Hello", str)
grepl("Y", str)

#Combine Two Strings
#Use the paste() function to merge/concatenate two strings:

str1 <- "Hello"
str2 <- "Colchester"

paste(str1, str2)
###Escape Characters
str <- "We play cricket in \"Lords\" and it is the home of Cricket"
str
cat(str)

##Multiple strings
##Multiple strings are often stored in a character vector, which you can create with c():
  
c("We", "Love", "Essex")

###Subsetting strings
#You can extract parts of a string using str_sub(). As well as the string, str_sub() takes start and end arguments which give the (inclusive) position of the substring:
  
  #Note: to use such functions we need to install tidyverse package.

#install.packages("tidyverse")
library(tidyverse)

x <- c("Apple", "Banana", "Pear")
str_sub(x, 1, 3)

#We can go backwards as well:
  
str_sub(x, -3, -1)

### Boolean

5 > 2    # TRUE because 5 is greater than 2
5 == 9   # FALSE because 5 is not equal to 9
100 < 98    # FALSE because 100 is greater than 98

a <- 100
b <- 90

a > b


# We can also use if function to compare the variables:
a <- 100
b <- 93
if (b > a) {
  print ("b is greater than a")
} else {
  print("b is not greater than a")
}

a <- 130
b <- 200
if (b<a){
print ("I need to work harder")
  } else {
print ("No, it's ok, have a break")
  }






#R Assignment Operators
my_var <- 10
my_var

my_var1 <<- 10
my_var1

10 -> my_var2
my_var2

10 ->> my_var3
my_var3


a <- 3
b <- 10

if (b > a) {
  print("b is greater than a")
}

a <- 10
b <- 10

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}

a <- 20
b <- 10

if (b < a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

a <- 20
b <- 10

if (b < a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}
#Nested statements 
x <- 99

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}
# AND operator 
a <- 20
b <- 33
c <- 50

if (a > b & c > a){
  print("Both conditions are true")
}

#OR operator
a <- 200
b <- 33
c <- 500

if (a > b | a > c){
  print("At least one of the conditions is true")
}

# Loops

x <- 1
while (x < 9) {
  print(x)
  x <- x + 1
}


# Break in Loop
e <- 1
while (e < 5) {
  print(e)
  e <- e + 1
  if (e == 4) {
    break
  }
}

# "Next" function in Loop
e <- 0
while (e < 9) {
  e <- e + 1
  if (e == 4) {
    next
  }
for (x in my_currencies) {
  print(x)
}  print(e)
}

# "For" in Loop
for (a in 1:6) {
  print(a)
}

my_currencies <- list("Dollars", "Pounds", "Euros")

for (v in my_currencies) {
  print(v)
}

# R Functions
my_function <- function() {
  print("Hello World!")
}

my_function()
