########################
# LIBRARIES
########################

library(shiny)

########################
# DEPENDENCIES
########################

source("../../core/app.R")
source("modules/module1.R")

########################
# INITIALIZE
########################

#initialize the app with particular
app <- myApp$new(title = "Templating",authenticate = FALSE, debug = FALSE)

app$addInput(
  list(
    x = sliderInput("x","X",min = 1,max = 50, value = 30),
    y = sliderInput("y","Y",min = 1,max = 50, value = 30)
  )
)



