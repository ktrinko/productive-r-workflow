library(tidyverse)
source(file="R/functions.R")

# Read data using readr
data <- readr::read_csv("input/data.csv")

# Summary
summary(data)


# Use the function
create_scatterplot(data, "Adelie", "Torgersen")
#create_scatterplot(data, "Gentoo", "Biscoe")