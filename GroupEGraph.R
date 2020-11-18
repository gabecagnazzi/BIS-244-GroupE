library(dplyr)
library(readr)
library(tidyverse)
library(readr)

Batting <- read_csv("baseballdatabank-2019.2/core/Batting.csv")

Batting2018 <- Batting %>% filter(Batting$yearID == '2018')

p <- ggplot(data=Batting2018, 
            aes(x = AB, 
                y= H))

p + geom_point() +
  labs(x = "At Bats", y = "Hits",
       title = "At Bats vs Hits For 2018",
       caption = "Source: Lahman's Baseball Database")