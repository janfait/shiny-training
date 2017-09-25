########################
# LIBRARIES
########################

#load all libraries which are likely to get used
library(shiny)
library(feather)
library(microbenchmark)
library(data.table)

########################
# DEPENDENCIES
########################

#source all R based dependencies and modules
source("../../core/app.R")

########################
# INITIALIZE
########################

#initialize the app with particular settings
app <- myApp$new(title = "Loading", authenticate = FALSE, debug = TRUE)

#define all inputs as part of the app module and use them in different places at will
app$addInput(
  list(
    run = actionButton("run","Run",icon("send-o"))
  )
)

