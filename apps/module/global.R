########################
# LIBRARIES
########################

#load all libraries which are likely to get used
library(shiny,quietly = T)

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
app <- myApp$new(title = "Modularizace", authenticate = FALSE, debug = TRUE)

#define all inputs as part of the app module and use them in different places at will
app$addInput(
  list(
    show = radioButtons("show","Show",choiceNames = c("Show","Hide"),choiceValues=c(1,0),inline=T),
    x = sliderInput("x","X",min = 1,max = 50, value = 30),
    y = sliderInput("y","Y",min = 1,max = 50, value = 30)
  )
)



