# external libraries

library(shiny)
library(dplyr)

# custom functions - shared, then app specific
source("../shared_functions/shared_helpers.R")

source("app1_functions/helpers.R")
source("app1_functions/data_fn.R")

ui <- fluidPage(
  verbatimTextOutput("my_value"),
  tableOutput("my_table")
)

server <- function(input, output, session) {
  output$my_value <- renderText({
    paste("TEST",
          count_uniques(iris))
  })

  output$my_table <- renderTable({
    df_add_rownumbers(iris)
  })
}

shinyApp(ui, server)