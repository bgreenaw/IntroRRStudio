#######################
### Section 1 ###
#######################

# create a simple object
UScapt = 'D.C.'
UScapt

# 3 ways to create the same object
numList1 = c(1, 2, 3, 4, 5)
numList2 = 1:5
numList3 = seq(from = 1, to=5, by=1)

numList1
numList2
numList3

numList1 == numList2


numList1[1:3]
numList1[1:3] * 5

nulist_x5 <- numList1[1:3] * 5

### Create a object with values 1 to 10 and 50 to 75

numlist =

#################################
### Section 2 ###
#################################

mtcars

View(mtcars)

mtcars$mpg

mtcars[1, ]

mtcars[, 1]

mtcars[1, 1]


### Modify code below to Show the first 10 Rows and the first 5 Columns

mtcars[]

#######################################
### Section 3 ###
#######################################

mtcars[mtcars$cyl == 6 | mtcars$cyl == 8 & mtcars$hp >= 146,]

mtcars[(mtcars$cyl == 6 | mtcars$cyl == 8) & mtcars$hp >= 146,]

mtcars[mtcars$cyl == 6 | (mtcars$cyl == 8 & mtcars$hp >= 146),]

###Select only 6 cyl with greater than 140hp or 8 cyl with less than 200hp. 

mtcars[]

#############################
### Section 4 ###
#############################

cor(mtcars$mpg, mtcars$wt)

lm(mpg ~ wt, data = mtcars)

plot(mtcars$wt, mtcars$mpg, pch = 19) #Add a comma and press tab to see other function options

plot(mtcars$wt, mtcars$mpg, pch = 19, sub = "Text for your sub title")  #Add a sub title to you plot



plot(mtcars$wt, mtcars$mpg, pch = 19)
lines(lowess(mtcars$wt, mtcars$mpg), col = "#FF6600", lwd = 2)
abline(lm(mpg ~ wt, data = mtcars), col = "#0099ff", lwd = 2)


### Modify the legend to remove the border

legend(x = 5, y = 30, legend = c("Lowess", 'lm'), lty = c(1,1), lwd = c(2,2), col = c("#FF6600", "#0099ff"))


######################
### TidyVerse ###
######################

install.packages("tidyverse")

library(tidyverse)


####################################
### Section 5 ###
####################################



newData = mtcars[, 1:4]


newData = mtcars[, c('mpg','cyl', 'disp', 'hp')]


newData_dplyr = mtcars %>% 
  select(mpg:hp)


### Compare Results
newData == newData_dplyr


####################################
### Section 6 ###
####################################

x = c(1, 2, NA, NA, 5, 6, NA, 8, NA, NA)

y = c(NA, NA, 3, 4, NA, NA, NA, NA, NA, NA)

z = c(NA, NA, NA, NA, NA, NA, 7, NA, 9, 10 )

coalesce(x, y, z)


### (Reorder (x, y, z) below to see what happens

x = c(1, 2, NA, NA, 5, 6, NA, 8, 4, NA)

y = c(NA, 4, 3, 4, NA, 8, NA, NA, NA, NA)

z = c(3, NA, 8, NA, 1, NA, 7, NA, 9, 10 )

coalesce(x, y, z)


