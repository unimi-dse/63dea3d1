# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

require(devtools)

reqr_necessary <- function(){
  require(magrittr)
  require(dplyr)
  require(ggplot2)
  require(plotly)
  require(esquisse)
  require(gganimate)
  require(gapminder)
  require(gifski)
}

necessary_pkgs <- function(){
  install.packages('magrittr')
  install.packages('dplyr')
  install.packages('ggplot2')
  install.packages('plotly')
  install.packages('esquisse')
  install.packages('gganimate')
  install.packages('gapminder')
  install.packages('gifski')
  require(magrittr)
  require(dplyr)
  require(ggplot2)
  require(plotly)
  require(esquisse)
  require(gganimate)
  require(gapminder)
  require(gifski)
}

import_data <- function(){
  path <- system.file('extdata/summer_olympics.csv', package = 'olympicdom')
  x <- read.csv(path)
  return(x)
}

medals_table <- function(){
  i <- c(1, 3, 6, 9)
  m <- import_data()[,i]
  return(filter(m, Sport == "Taekwondo", Year >= 2000L & Year <= 2012L))
}

gold_medals <- function(){
 import_data() %>%
  filter(Year >= 2000L & Year <= 2012L) %>%
  filter(Sport %in% "Taekwondo") %>%

  filter(Medal %in% "Gold") %>%
  ggplot() +
  aes(x = Country, fill = Medal) +
  geom_bar() +
  scale_fill_hue() +
  coord_flip() +
  theme_minimal()
}

silver_medals <- function(){
  import_data() %>%
    filter(Year >= 2000L & Year <= 2012L) %>%
    filter(Sport %in% "Taekwondo") %>%

    filter(Medal %in% "Silver") %>%
    ggplot() +
    aes(x = Country, fill = Medal) +
    geom_bar() +
    scale_fill_hue() +
    coord_flip() +
    theme_minimal()
}


bronze_medals <- function(){
 import_data() %>%
  filter(Year >= 2000L & Year <= 2012L) %>%
  filter(Sport %in% "Taekwondo") %>%

  filter(Medal %in% "Bronze") %>%
  ggplot() +
  aes(x = Country, fill = Medal) +
  geom_bar() +
  scale_fill_hue() +
  coord_flip() +
  theme_minimal()
}

all_medals <- function(){
import_data() %>%
  filter(Year >= 2000L & Year <= 2012L) %>%
  filter(Sport %in% "Taekwondo") %>%
  ggplot() +
  aes(x = Country) +
  geom_bar() +
  scale_fill_hue() +
  coord_flip()
}

all_medals_animate <- function(){
          animate(import_data() %>%
            filter(Year >= 2000L & Year <= 2012L) %>%
            filter(Sport %in% "Taekwondo") %>%
            ggplot() +
            aes(x = Country) +
            geom_bar() +
            scale_fill_hue() +
            coord_flip()+
            labs(title = 'Year: {frame_time}', x = 'Country', y = 'Medal Count') +
            transition_time(Year)+
            ease_aes('linear'))
}
