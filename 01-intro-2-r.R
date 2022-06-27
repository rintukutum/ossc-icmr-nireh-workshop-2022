#' Getting help in R
#' The simplest way to get help in R is to click on the 
#' Help button on the toolbar of the RGui window 
#' (this stands for R’s Graphic User Interface). 
#' Alternatively, if you are connected to the internet, 
#' you can type CRAN into Google and search for the 
#' help you need at CRAN (see Section 1.4). However, 
#' if you know the name of the function you want 
#' help with, you just type a question mark ? at 
#' the command line prompt followed by the name 
#' of the function. So to get help on read.table, 
#' just type

?read.table

# read.table is a function
# reading text file (.txt)

read.table(file = 'data/therbook/aplam.txt')

# with header = TRUE
read.table(file = 'data/therbook/aplam.txt',header = TRUE)



#' Demonstrations of R functions
#' These can be useful for seeing the range of things that 
#' R can do. Here are some for you to try:
#' 

demo(persp)

#' -------------
#' Packages in R
#' -------------
#' Finding your way around the contributed packages can be 
#' tricky, simply because there are so many of them, 
#' and the name of the package is not always as 
#' indicative of its function as you might hope. 
#' There is no comprehensive cross-referenced 
#' index, but there is a very helpful feature 
#' called ‘Task Views’ on CRAN

#' install packages in R
install.packages('ggplot2')

#' load a package in R
library(ggplot2)

#' homework install follwing packages before tomorrow's session
# install.packages("akima")
# install.packages("boot")
# install.packages("car")
# install.packages("lme4")
# install.packages("meta")
# install.packages("mgcv")
# install.packages("nlme")
# install.packages("deSolve")
# install.packages("R2jags")
# install.packages("RColorBrewer")
# install.packages("RODBC")
# install.packages("rpart")
# install.packages("spatstat")
# install.packages("spdep")
# install.packages("tree")


#' Good housekeeping
objects()

#' remove (rm) any variables names you have created
x <- 7
y <- 7
z <- 10
x + y

# remove a variable
rm(x)
#' remove many
rm(y,z)

# remove all objects
rm(list=ls())


#---------------------------------
# Essentials of the R Language
#---------------------------------

#' ------------
#' Calculations
#' ------------
#' The screen prompt > is an invitation to put R to work.
#' 

1 + 1

# output
# [1] 2

log(42/7.3)


5+6+3+6+4+2+4+8+
  3+2+7

# output 
# [1] 50

# many instructions together with semicolon (;)
2+3; 5*7; 3-7

#' Complex numbers in R
#' 
#' Complex numbers consist of a real part and an 
#' imaginary part, which is identified 
#' by lower-case i like this:
z <- 3.5-8i

# Determine the real part:
Re(z)

# Determine the imaginary part:
Im(z)

# Calculate the modulus 
# (the distance from z to 0 in the complex 
# plane by Pythagoras; if x is the real part and
# y is the imaginary part, then the modulus is
# sqrt(x^2 + y^2)

Mod(z)

# or
x <- Re(z)
y <- Im(z)
sqrt(x^2 + y^2)

#' Rounding
#' 
#' The ‘greatest integer less than’ function is floor
floor(5.7)

#' The ‘next integer’ function is ceiling
#' 
ceiling(5.7)


#' Arithmetic
7+3-5*2

#' The log function gives logs to the base e (e = 2.718 282)
log(10)


log10(6)

#' Variable names and assignment
#' 
#' 1. Variable names in R are case sensitive, so y is not the same as Y.
#' 
#' 2. Variable names should not begin with numbers (e.g.1x) or symbols(e.g.%x).
#' 
#' 3. Variable names should not contain blank spaces (use back.pay not back pay).


#' Integers

x <- c(5,3,7,8)
is.integer(x)

is.numeric(x)

x <- integer(x)

#' Make the numeric object first, then convert the object to 
#' integer using the as.integer function like this
x <- c(5,3,7,8)
x_integer <- as.integer(x)
is.integer(x_integer)

#' Factors
#' Factors are categorical variables that have a fixed 
#' number of levels. A simple example of a factor might 
#' be a variable called gender with 
#' two levels: ‘female’ and ‘male’.
gender <- factor(c("female", "male", "female", "male", "female"))
class(gender)
mode(gender)


#' ------------
#' Logical operations
#' ------------
#' A crucial part of computing involves asking 
#' questions about things. Is one thing bigger 
#' than other? Are two things the same size? 
#' Questions can be joined together using words 
#' like ‘and’ ‘or’, ‘not’.
#' 
#' Questions in R typically evaluate to 
#' TRUE or FALSE but there is the option of 
#' a ‘maybe’ (when the answer is not available, NA)

#' --------
#' TRUE and T with FALSE and F

TRUE == FALSE

T == F

T != F

#' Logical arithmetic
#' 
#' Arithmetic involving logical expressions is very 
#' useful in programming and in selection of variables.
x <- 0:6

x < 4

all(x>0)

any(x<0)

#' x <- y   x is assigned the value of y (x gets the values of y);
#' x = y    in a function or a list x is set to y unless you specify otherwise; 
#' x == y   produces TRUE if x is exactly equal to y and FALSE otherwise.

x1 <- 2
y1 <- 4

x1 <- y1


x1 <- 2
y1 <- 4

x1 = y1

x1 == y


#' ------------
#' Sequences
#' ------------
#  Generating sequences
0:10

15:6

#' To generate a sequence in steps other than 1, you 
#' use the seq function. 
seq(from = 0, to = 1.5, by = 0.1)


seq(from = 6, to = 4, by = -0.2)

#' Generating repeats
rep(9,5)


#' ------------
#' Missing values and things that are not numbers
#' ------------
#' 
#' 
#' ------------
#' Vectors and subscripts
#' ------------
#' 
#' ------------
#' Vectorized functions
#' ------------
#' 
#' ------------
#' Matrices and arrays
#' ------------
#' 
#' 
#' ------------
#' Sampling
#' ------------
#' 
#' 
#' ------------
#' Loops and repeats
#' ------------
#' 
#' ------------
#' Lists
#' ------------
#' 
#' 
#' ------------
#' Text, character strings and pattern matching
#' ------------
#' 
#' 
#' ------------
#' Dates and times
#' ------------
#' 
#' 
#' ------------
#' Environments
#' ------------
#' 
#' 
#' ------------
#' Writing R functions
#' ------------
#' 
#' 
#' ------------
#' Writing to file from R
#' ------------
#' 
#' 
#' 


