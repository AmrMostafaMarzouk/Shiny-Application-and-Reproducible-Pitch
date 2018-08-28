#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer( function(input, output) {
   
  output$FirstNumber <- renderText(input$No1)
  output$SecondNumber <- renderText(input$No2)
  output$Output <- renderText(
    if (input$Operation=="Add") {
      input$No2+input$No1
    }
    else if (input$Operation=="Subtract"){
    input$No1-input$No2
    }
    
    else if (input$Operation=="Multiply"){
      input$No1*input$No2
    }
    else if (input$Operation=="Divide"){
      input$No1/input$No2
    }
    )
  
    
    
    
  
}
)