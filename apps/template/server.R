######################################################################################################
# BEGIN SERVER
######################################################################################################
function(session, input, output) {

  output$chart1_1  <- renderPlot({
    callModule(
      id = "appModule1",
      module = appModule1,
      x = input$x,
      y = input$y
    )
  })
  
}