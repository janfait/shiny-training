######################################################################################################
# BEGIN SERVER
######################################################################################################
function(session, input, output) {

  #use module to render chart by passing input values as parameters
  output$chart1_1  <- renderPlot({
    callModule(
      id = "appModule1",
      module = appModule1,
      x = input$x,
      y = input$y
    )
  })
  
  #reusing above, showing variability of input, but fixed intrepretation within module
  output$chart1_2  <- renderPlot({
    callModule(
      id = "appModule1",
      module = appModule1,
      x = input$y,
      y = input$x
    )
  })
  
}