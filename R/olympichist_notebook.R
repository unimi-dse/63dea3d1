#question is: How has the domination of countries changed during the history of Olympics, from 1986 Athens to 2016 Rio?
install.packages("esquisse")
install.packages("gganimate")
require(devtools)
require(dplyr)
require(esquisse)
require("plotly")
require("tidyverse")
require("data.table")
require("gridExtra")
require("knitr")
library(gganimate)
devtools::install_github("unimi-dse/olympichist")

mydata <- read.csv('/Users/bedir/Documents/olympics.csv')

i <- c(8, 9, 11, 12, 16)
mydata[,i]
medalwinners <- na.omit(mydata)
m <- medalwinners[,i]

medalstable <- function(i){
  medal <- medalwinners[,i]
  return(medal)
}

medalstable(i)

import_data <- function(){
  path <- system.file('/Users/bedir/Desktop/olympichist/olympics.csv', package = 'olympichist')
  x <- read.csv(path)
  return(x)
}

n <-
 filter(Year >= 1936L & Year <= 1936L)
 ggplot() +
 aes(x = NOC, fill = NOC, weight = Medal) +
 geom_bar() +
 scale_fill_hue() +
 coord_flip() +
 theme_minimal()


