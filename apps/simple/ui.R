
# Define UI for application that draws a histogram
shinyUI(
  
  fluidPage(
    titlePanel("Simple"),

    sidebarLayout(
      
      sidebarPanel(
        selectInput("select1","Variable",choices = c("a","p")),
        sliderInput("slider1",label = "Radky",min = 0, max = 100, value=10)
      ),
      mainPanel(
        plotOutput("chart1"),
        tableOutput("table1")
      )
  )
))
