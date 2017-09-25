
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(app$ui$title),
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
      sidebarPanel(
        app$ui$input,
        conditionalPanel(condition="output.debug == TRUE",
        h4("Input Console"),
        textOutput("console")
        )
      ),
      # Show a plot of the generated distribution
      mainPanel(
          plotOutput("chart1_1"),
          textOutput("text1_1"),
          tableOutput("text1_2")
      )
  )
))
