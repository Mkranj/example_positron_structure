# external libraries

library(shiny)
library(dplyr)
library(plotly)

# custom functions - shared, then app specific
source("../shared_functions/shared_helpers.R")

source("app2_functions/plotly.R")

ui <- fluidPage(
  plotlyOutput("my_plot")
)

server <- function(input, output, session) {
  output$my_plot <- renderPlotly({
    create_plotly_plot()
  })
}

shinyApp(ui, server)