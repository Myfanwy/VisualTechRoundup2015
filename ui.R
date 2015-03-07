
#ui

library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel("Hello Haleys!"),
  
  
  sidebarLayout(
    sidebarPanel(
      
      sliderInput("x", "Minimum number of girls with that name", min=5, max = 80000, value = 50,
                  step=500, round = TRUE, width = '100%'),
      
      actionButton("goButton", label = "Nope, hate 'em, try again")
      
    ),
    
    mainPanel(
      tableOutput("y")
    )
  )
))
