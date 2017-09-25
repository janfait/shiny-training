########################
# LIBRARIES
########################


#load all libraries which are likely to get used
library(shiny,quietly = T)
library(feather,quietly = T)

########################
# DEPENDENCIES
########################

#source all R based dependencies and modules
source("../../core/app.R")
source("modules/module1.R")

########################
# INITIALIZE
########################

#initialize the app with particular settings
app <- myApp$new(title = "Reaktivita", authenticate = FALSE, debug = TRUE)

#define all inputs as part of the app module and use them in different places at will
app$addInput(
  list(
    rows = sliderInput("rows","Rows",min = 0,max = 1000000, value = 100, step = 10000),
    reset = actionButton("reset",label = "Reset Slider",icon = icon("circle"))
  )
)


