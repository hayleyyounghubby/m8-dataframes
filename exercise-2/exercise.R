# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
Seahawks <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
OtherTeams <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
football.data <- data.frame(Seahawks, OtherTeams)

# Create a new column "diff" that is the difference in points
football.data$diff <- football.data$Seahawks - football.data$OtherTeams

# Create a new column "won" which is TRUE if the Seahawks wom
football.data$won <- football.data$diff > 0

# Create a vector of the opponents
opponents <- c('Dolphins', 'Rams', '49ers', 'Jets')

# Assign your dataframe rownames of their opponents
row.names(football.data) <- opponents
