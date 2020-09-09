#First R script for murders
library(tidyverse)
library(dslabs)
data(murders)

murders %>%
  ggplot(aes(population, total, label = abb, color = region)) + geom_label()
head(murders)

data(heights)

new_tab <- filter(heights, height>mean(height) & sex == "Female")
col <- nrow(new_tab)
