library(shiny)

ui <- fluidPage(theme = shinythemes::shinytheme("cerulean"),
  titlePanel("Application Title"),
  
  navlistPanel(
    "Header A",
    tabPanel("Component 1",
      wellPanel(
        textInput("text", "Text input:", "input here..."),
        sliderInput("slider", "Select the value you want:", min = 0, max = 100, value = 50)
      )
    ),
    tabPanel("Component 2",
      wellPanel(
        numericInput("number", "Number input:", value = 0),
        dateInput("date", "Date input:")
      )
    ),
    "Header B",
    tabPanel("Component 3"),
    tabPanel("Component 4"),
    hr(style = "height:10px; border:red thin; color:red"),
    tabPanel("Component 5")
  )
)

server <- function(input, output) {
}

shinyApp(ui, server)
