

appModule1 <- function(input,output,session,x,y){

  b <- sample(x,size = y,replace = T)
  p <- plot(b)
  
  return(p)
  
}
