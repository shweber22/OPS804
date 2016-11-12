# Homework 1

## Assign your student ID as text to the following variable

student.ID <- "0106333"

setwd("C:/Users/Sarah/Documents/GitHub/OPS804/class 1/homework/data")

survey <- read.csv(file = "surveyData.csv")

## Calculate a full descriptive summary for the variable "age" including and as:
## count, sum, min, max, mean, median, range, q1, q3, iqr, sd, var, kurtosis, skewness
## into the data frame (variable) "age.desc"
## SW note: use a library for kurtosis and skewness, or figure out how to manually calc it

install.packages("dplyr")
install.packages("ggplot2")
install.packages("moments")
library(ggplot2)
library(dplyr)
library(moments)
library(dplyr)
age.desc <- read.csv(file = "surveyData.csv")

age.desc <- as.data.frame ( survey %>%
  summarise(
    count = length(What.is.your.age.in.years.),
    sum = sum(What.is.your.age.in.years.),
    min = min(What.is.your.age.in.years.),
    max = max(What.is.your.age.in.years.),
    mean = mean(What.is.your.age.in.years.),
    median = median(What.is.your.age.in.years.),
    range = max(What.is.your.age.in.years.) - min(What.is.your.age.in.years.),
    q1 = quantile(What.is.your.age.in.years., c(.25)),  
    q3 = quantile(What.is.your.age.in.years., c(.75)),
    IQR = IQR(What.is.your.age.in.years.),
    sd = sd(What.is.your.age.in.years.),
    var = var(What.is.your.age.in.years.),
    kurtrosis = kurtosis(What.is.your.age.in.years.),
    skewness = skewness(What.is.your.age.in.years.)
  ))


# IGNORE THIS (or do it for extra credit)
## Plot a boxplot including error bars using the ggplot2 package
## and save the result into the variable "age.bp" and print the result

boxplot(age.desc)
