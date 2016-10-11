# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data('USPersonalExpenditure')

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
as.data.frame('USPersonalExpenditure')

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame('USPersonalExpenditure')

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
US.personal.exp <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(US.personal.exp)
[1] "X1940" "X1945" "X1950" "X1955" "X1960"

# Why are they so strange?


# What are the row names of your dataframe?
rownames(US.personal.exp)
[1] "Food and Tobacco"    "Household Operation" "Medical and Health" 
[4] "Personal Care"       "Private Education"

# Create a column `category` that is equal to your rownames
US.personal.exp$category <- rownames(US.personal.exp)

# How much money was spent on personal care in 1940?
US.personal.exp['Personal Care', 'X1940']
[1] 1.04

# How much money was spent on Food and Tobacco in 1960
US.personal.exp['Food and Tobacco', 'X1960']
[1] 86.8

# What was the highest expenditure category in 1960?
max(US.personal.exp$X1960)
[1] 86.8

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year

# Using your function, determine the highest spending category of each year


# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
