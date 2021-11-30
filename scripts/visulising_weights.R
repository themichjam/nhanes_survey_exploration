#### Analysing NHANES Data in R ####

## Visualising weights

# load packages
library(ggplot2)

# construct histogram of weights
ggplot(data = ce, mapping = aes(x = FINLWT21)) +
  geom_histogram()
