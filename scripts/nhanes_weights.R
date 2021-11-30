# load
install.packages("NHANES")
library(NHANES)
data("NHANESraw")

#Create table of average survey weights by race
tab_weights <- NHANESraw %>%
  group_by(Race1) %>%
  summarize(avg_wt = mean(WTMEC4YR))

#Print the table
print(tab_weights)