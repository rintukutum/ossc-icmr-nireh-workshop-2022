#' URL
#' http://www.bio.ic.ac.uk/research/mjcraw/therbook/index.htm

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


#------ EXTRA
# install.packages("readxl")

library(readxl)

my_xls <- read_excel(path = 'data/demo.xlsx')

my_xls_s1 <- read_excel(path = 'data/demo.xlsx',sheet = "Sheet1")
my_xls_s2 <- read_excel(path = 'data/demo.xlsx',sheet = "rintu")



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
gender <- factor(c("male","female", "male", "female", "male", "female"))
class(gender)
mode(gender)
as.numeric(factor(c("male","female", "male", "female", "male", "female"),
       levels = c('female','male')))

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

TRUE == TRUE

T == F

T != F

#' Logical arithmetic
#' 
#' Arithmetic involving logical expressions is very 
#' useful in programming and in selection of variables.
x <- 0:6

x < 4

all(x>-1)

any(x<1)

#' x <- y   x is assigned the value of y (x gets the values of y);
#' x = y    in a function or a list x is set to y unless you specify otherwise; 
#' x == y   produces TRUE if x is exactly equal to y and FALSE otherwise.

x1 <- 2
y1 <- 4

x1 <- y1


x1 <- 1
y1 <- 8

x1 = y1 # avoid using this

x1 == y1

x1 != 9



#' ------------
#' Sequences
#' ------------
#  Generating sequences
0:10

15:6

#' To generate a sequence in steps other than 1, you 
#' use the seq function. 
seq(from = 0, to = 10, by = 2)


seq(from = 16, to = 4, by = -5)

#' Generating repeats
rep(x = 9,times=5)


#' ------------
#' Missing values and things that are not numbers
#' ------------
#' Missing values, infinity and things that are not numbers
# Calculations can lead to answers that are plus 
# infinity, represented in R by Inf, or minus 
# infinity, which is represented as -Inf:

3/0
# [1] Inf
-12/0
# [1] -Inf

# Calculations involving infinity can be 
# evaluated: for instance,
exp(-Inf)

# [1] 0

# Other calculations, however, lead to 
# quantities that are not numbers. These 
# are represented in R by NaN (‘not
# a number’). Here are some of the classic cases:

0/0

is.finite(10)

#' Missing values: NA
y <- c(4,NA,7)

#'  treating NA as if it was a piece of 
#'  text and using double equals (==) 
#'  to test for it. So this does not work:
y == NA
y == "NA"

is.na(y)

#' To produce a vector with the NA 
#' stripped out, use subscripts with 
#' the not ! operator like this:
y[! is.na(y)]

y1 <- c(1,2,3,NA)
y2 <- c(5,6,NA,8)
y3 <- c(9,NA,11,12)
y4 <- c(NA,14,15,16)

full.frame <- data.frame(y1,y2,y3,y4)

reduced.frame <- full.frame[!is.na(full.frame$y1),]

#' Some functions do not work with their default 
#' settings when there are missing values in 
#' the data, and mean is a classic example of this:

x <- c(1:8,NA)

mean(x)
# [1] NA

#' In order to calculate the mean of the 
#' non-missing values, you need to specify 
#' that the NA are to be removed,
#' using the na.rm=TRUE argument:
mean(x, na.rm=TRUE)

vmv <- c(1:6,NA,NA,9:12)

#' If the missing values are genuine
#' counts of zero, you might want to 
#' edit the NA to 0. Use the is.na 
#' function to generate subscripts for this:
vmv[is.na(vmv)] <- 0

#' ------------
#' Vectors and subscripts
#' ------------
# subsetting
counts <- c(25,12,7,4,6,2,1,0,2)
counts[5]

counts[c(1,5)]

counts[-7]

# Naming elements within vectors
names(counts) <- 0:8

y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)

sort(y)

rev(sort(y))

rev(sort(y))[1:3]

x <- c(2,3,4,1,5,8,2,3,7,5,7)

which(x == max(x))

which.max(x)

which(x == min(x))

which.min(x)


#' Vector functions
#' 
y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)
mean(y)
#' ------------
#' Vectorized functions
#' ------------
dat <-read.table("data/therbook/yields.txt",
                 header = TRUE)
apply(dat,2,min)
apply(dat,2,max)

boxplot(dat)
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


