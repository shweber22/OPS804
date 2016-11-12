# Class exercise 2

library(dplyr)

## Assignments

### From the imported data.frame flights.2010 calculate the median and the mean departure delay (DepDelayMinuts)

### From flights.2010$DepDelayMinutes calculate the variance and standard deviation

### Filter all flights from American Airlines and calculate median, mean, variance and standard deviation

flights %>%
  filter(Carrier == "AA") %>%
  summarise(
    x = median(DepDelayMinutes, na.rm = T),
    y = mean(DepDelayMinutes, na.rm = T)
  )
# lots of N/A so 'na.rm = T' will removed all N/A's

### Filter all flights from US Airways and calculate median, mean, variance and standard deviation

### What can you say about the difference between these statistics?

### Create a full descriptive statistics summary using the dplyr package for flights.2010