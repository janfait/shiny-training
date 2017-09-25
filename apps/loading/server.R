######################################################################################################
# BEGIN SERVER
######################################################################################################
function(session, input, output) {

    #output processor helps outputs to share the work, it is a simpler concept than modules, useful for smaller apps
    outputProcessor <- eventReactive(input$run,{
      
      #load data
      withProgress(message = 'Loading Data', value = 0, {
        times <-  microbenchmark(
          read.csv = read.table("data/data.csv",header = T,sep = ","),
          read.table = read.table("data/data.csv",header = T,sep = ","),
          fread = data.table::fread("data/data.csv",sep = ","),
          readRDS = readRDS("data/data.rds"),
          read_feather = feather::read_feather("data/data.feather"),
          times = 3,
          unit = "ms"
        )
        # Increment the progress bar, and update the detail text.
        incProgress(0.5, detail = "Completing")
      })

      #output list
      out <- list(
        times = times
      )
      #return
      return(out)

    })

  ######################################################################################################
  # OUTPUTS
  ######################################################################################################
  output$chart1_1  <- renderPlot({
    out <- outputProcessor()
    plot(out$times)
  })
  output$table1_1  <- renderTable({
    out <- outputProcessor()
    print(out$times)
  })

  
  
}