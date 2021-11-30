#Create table of average survey weights by race
tab_weights <- NHANESraw %>%
  group_by(Race1) %>%
  summarize(avg_wt = mean(WTMEC4YR))

#Print the table
tab_weights

# Specify the NHANES design
NHANES_design <- svydesign(data = NHANESraw,
                           strata = ~SDMVSTRA,
                           id = ~SDMVPSU, nest = TRUE,
                           weights = ~WTMEC4YR)

# Print summary of design
summary(NHANES_design)

# Number of clusters
NHANESraw %>%
  summarize(n_clusters = n_distinct(SDMVSTRA, SDMVPSU))

# Sample sizes in clusters
NHANESraw %>%
  count(SDMVSTRA, SDMVPSU)

