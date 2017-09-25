myApp <- setRefClass(
  Class = "myApp",
  fields = list(
   mode = "list",
   author = "list",
   legal = "list",
   ui = "list",
   data = "list"
  ),
  methods = list(
    initialize = function(title = "Median App",authenticate = FALSE,debug = FALSE){
      
      #set initialization parameters and defaults
      .self$mode <- list(
        authenticate = authenticate,
        debug = debug
      )
      .self$ui <- list(
        title = title
      )
      .self$data <- list()
      .self$legal <- list()
      .self$author <- list()
      
    },
    addInput = function(input=list()){
      .self$ui$input <- input
    }
  )
)