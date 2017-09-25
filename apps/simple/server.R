######################################################################################################
# BEGIN SERVER
######################################################################################################
function(session, input, output) {

  output$chart1  <- renderPlot({
    plot(data[,input$select1],data[,"a"],xlab="Index",ylab="Variable")
  })
  
  output$table1  <- renderTable({
    head(data,10)
  })
 
}