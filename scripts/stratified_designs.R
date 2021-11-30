# Glimpse the data
glimpse(apistrat)

# Summarize strata sample sizes
apistrat %>%
  count(stype)

# Specify the design
apistrat_design <- svydesign(data = apistrat,
                             weights = ~pw, fpc = ~fpc, id = ~1,
                             strata = ~stype)

# Look at the summary information stored in the design object
summary(apistrat_design)
