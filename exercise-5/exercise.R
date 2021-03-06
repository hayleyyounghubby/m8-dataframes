# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
setwd("/Users/hayleyyounghusband/m8-dataframes/exercise-5/data") #Setting working directory
grants <- read.csv('./gates_money.csv')

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)
# [1] TRUE

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org <- grants$organization
org <- as.vector(grants$organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.spending <- mean(spending)
# [1] 2600197

# What was the dollar amount of the largest grant?
highest.amount <- max(spending)
# [1] 100000000

# What was the dollar amount of the smallest grant?
lowest.amount <- min(spending)
# [1] 5000

# Which organization received the largest grant?
largest.grant <- org[spending == highest.amount]
# [1] "Hillsborough County Public Schools"

# Which organization received the smallest grant?
smallest.grant <- org[spending == lowest.amount]
# [1] "New Mexico Business Roundtable for Educational Excellence"

# How many grants were awarded in 2010?
grants.2010 <- length(spending[grants$start_year == 2010])
# [1] 18