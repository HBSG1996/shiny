library(shiny)

server<-function(input,output){
  output$text1<-renderText({
    paste("You have selected this",input$var)
  })
}