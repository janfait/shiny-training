
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  titlePanel("Simple"),

    sidebarLayout(
      
      sidebarPanel(
        selectInput("select1","Variable",choices = c("a","p"))
      ),
      mainPanel(
        plotOutput("chart1")
      )
  )
))
