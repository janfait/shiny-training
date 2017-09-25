
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
      conditionalPanel(condition="input.show == 1",
        # Show a plot of the generated distribution
        mainPanel(
          plotOutput("chart1_1"),
          plotOutput("chart1_2")
        )
      )
  )
))
