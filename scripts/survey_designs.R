# load packages
library(survey)
library(tidyverse)

# look at aspisrs df
data(api)
glimpse(apisrs)

# Specify a simple random sampling for apisrs
apisrs_design <- svydesign(data = apisrs, weights =
                             ~pw, fpc = ~fpc, id = ~1)

# Produce a summary of the design
summary(apisrs_design)
