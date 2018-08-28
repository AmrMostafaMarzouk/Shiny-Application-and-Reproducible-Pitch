#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput("No1","Enter the First Number",""),
    numericInput("No2","Enter the second Number",""),
    textInput("Operation","Enter the required Math Operation ","")),
    
    # Show a plot of the generated distribution
    mainPanel(( "Output"),
              textOutput("Output"))
  )
))
