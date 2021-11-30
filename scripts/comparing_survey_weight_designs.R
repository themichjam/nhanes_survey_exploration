# Construct histogram of pw
ggplot(data = apistrat,
       mapping = aes(x = pw)) + 
  geom_histogram()
