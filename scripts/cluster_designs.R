# Glimpse the data
glimpse(apiclus2)

# Specify the design
apiclus_design <- svydesign(id = ~dnum + snum, data =
                              apiclus2, weights = ~pw,
                            fpc = ~fpc1 + fpc2)

#Look at the summary information stored in the design object
summary(apiclus_design)
