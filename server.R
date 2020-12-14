#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer (function(input, output) {
    
    H1 <- reactive({
        Input <- input$Adjacent
        H1<- sqrt((Input^2)*2)
    })
    
    output$H1 <- renderText({
        H1()
    })
})
