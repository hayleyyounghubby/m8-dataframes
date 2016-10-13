# Exercise 6: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
setwd("/Users/hayleyyounghusband/m8-dataframes/exercise-6") # Changed working directory
female.names <- read.csv("data/female_names.csv")
View(female.names) # viewing female.names

# Create a vector `year` as the year column of the dataset
year <- female.names$year
year <- as.vector(female.names$year) # Converting year into a vector with as.vector

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- female.names$name
name <- as.vector(female.names$name) # Converting name into a vector with as.vector

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names$prop
prop <- as.vector(female.names$prop) # Converting prop into a vector with as.vector

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[year == 2013]
names.2013 <- female.names[female.names$year == 2013, 'name']

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[year == 2013]

# What was the most popular female name in 2013?
popular.female <- names.2013[prop.2013 == max(prop.2013)]
# [1] "Sophia"

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
  year.tmp <- year[year == my.year]
  names.tmp <- name[year == my.year]
  prop.tmp <- prop[year == my.year]
  most.pop <- names.tmp[prop.tmp == max(prop.tmp[year.tmp == my.year])]
  return(paste('The most popular name in', my.year, 'was', most.pop))
}


# What was the most popular female name in 1994?
# [1] "The most popular name in 1994 was Jessica"

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year

# How popular was the name 'Laura' in 1995