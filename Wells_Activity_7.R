#Jason Wells
#10/11/2019
#Group:Robert Rayburn, Maggie Green
library(tidyverse)
library(lubridate)
weather <- read_csv("data/weather.csv")
weather_long <- weather %>%
  gather("day","element",d1:d30) %>%
  mutate(day = str_remove_all("d"))
  
