
library(shiny)
library(babynames)
library(dplyr)
options(digits = 0)

# x <- function(n) {
#   y <- babynames %>%
#     filter(sex=='M', n > 150) %>%
#     sample_n(., 5) %>%
#     arrange(desc(n))
#   return(y)
# }

# y <- babynames %>%
#   filter(sex=='M', n > 150) %>%
#   sample_n(., 5) %>%
#   arrange(desc(n))

shinyServer(function(input, output) {
  
  output$y <- renderTable({
    input$goButton
    
   # dist <- isolate(filter(babynames, sex=='F', n > input$x))
  #  dist <- isolate(sample_n(dist, 5))
    dist <- isolate(babynames %>%
                      filter(sex=='F', n > input$x) %>%
                      sample_n(., 5) %>%
                      select(year, name, n) %>%
                      arrange(desc(n))
  )
    dist$year <- as.integer(dist$year)
    print(dist)
    
  })
  
})