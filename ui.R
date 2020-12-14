#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

## An app to calculate the length of hypotenuse of a isosceles right triangle 
## based on length of adjacent provided. 

library(shiny)

## defining appearance of the input panel 

shinyUI(fluidPage(
    titlePanel("Calculating the length of hypotenuse"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("Adjacent", "Input length of adjacent", 1, 100, value = 50),
            submitButton("Submit")
        ),
       
        mainPanel(
            plotOutput("plot1"),
            h2 ("Length of Hypotenuse"),
            textOutput("H1"),
            h6 ("This is the documentation for the Length-of-hypotenuse app."), 
            h6 ("This app calculates the length of the hypotenuse of a isosceles right triangle based on the length of the two adjacents."),
            h6 ("To use the app, simply select the length of the adjacents by using the slider."), 
            h6 ("The length of the hypotenuse is then calculated and displayed ")
        )
    )
))