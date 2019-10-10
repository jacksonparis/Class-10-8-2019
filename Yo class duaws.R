library(tidyverse)

roll <- function() {
  sample(x = 1:6, size = 1)
}

rollem <- function(n) {
  
  results <- vector(mode = "integer", length = n)
  for(i in 1:n){ results [i] <- roll() + roll()
  }
  return(results)
}

x <- tibble(rolls  = rollem(1000))

plot_rolls <- function() { 
  x <- tibble(rolls  = rollem(100))
ggplot(x, aes(x = rolls)) + geom_histogram() 
}

rollem2 <- function(n) {
  map_int(1:n, ~ roll() + roll())
}

plot_rolls2 <- function(n) {
x1 <- tibble(rolls = rollem2(n))
ggplot(x1, aes(x = rolls)) + geom_histogram()
}


