######################################################################################################
# BEGIN SERVER
######################################################################################################
function(session, input, output) {

    #output processor helps outputs to share the work, it is a simpler concept than modules, useful for smaller apps
    outputProcessor <- reactive({
    
        #load data
        data <- read.table("data/data.csv",header = T,sep = ",",nrows = input$rows)
        mean <- mean(data$p)
        #create an output list
        out <- list(
          data = data,
          mean = mean
        )
        #spit it out
        return(out)

    })

  ######################################################################################################
  # OBSERVERS
  ######################################################################################################
  #observe a press of the reset button
  observe({
    if(input$reset>0){
      updateSliderInput(session,"rows",value=100)
    }
  })

  #observe and react with notification
  observe({
    if(input$rows>500000){
      showNotification("This is going to take a while",duration = 1)
    } 
  })


  ######################################################################################################
  # UTILITY OUTPUTS
  ######################################################################################################
  #pass static or client data here so you can use them in conditional inputs
  output$debug <- reactive({
    app$mode$debug
  })
  #create the console output for debug of input values
  output$console <- renderPrint(
    reactiveValuesToList(input)
  )
  ######################################################################################################
  # OUTPUTS
  ######################################################################################################
  #use module to render chart by passing input values as parameters
  output$chart1_1  <- renderPlot({
    out <- outputProcessor()
    barplot(table(out$data$p))
  })
  output$text1_1  <- renderPrint({
    out <- outputProcessor()
    out$mean
  })
  output$text1_2  <- renderTable({
    out <- outputProcessor()
    head(out$data)
  })
  
  
}