library(tidyverse)

# setwd("~/perso/tmp/project/penguins")
# Tilde zeigt aufs Homeverzeichnis des Benutzers
# mittels path.expand("~") zeigt mir R den kompletten Pfad aufs Home-Verzeichnis an, hier:"C:/Users/Kurt/Documents"

# Read data using readr
data <- readr::read_csv("https://raw.githubusercontent.com/holtzy/R-graph-gallery/master/DATA/data_2.csv")

# Summary
summary(data)

# Calculating mean bill length for different species and islands using dplyr
data %>%
  filter(species == "Adelie") %>%
  group_by(island) %>%
  summarize(mean_bill_length = num(mean(bill_length_mm, na.rm = TRUE), digits = 2))

# Plot using ggplot2
data %>%
  na.omit() %>%
  ggplot(aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)) +
  geom_point() +
  labs(x = "Bill Length (mm)", y = "Bill Depth (mm)", title = "Penguin Bill Dimensions") +
  scale_shape_manual(values = c("Adelie" = 16, "Chinstrap" = 17, "Gentoo" = 18))
