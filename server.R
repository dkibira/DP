#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
setwd("c:\\kibira\\deploy-shiny")
mpg <- read.csv("mpg1.txt", sep=",")
saudi <- subset(mpg, manufacturer=="audi")
# Define server logic required to draw a plot
theInput = ""
library(shiny)
shinyServer(
function(input, output, session){

        output$myPlot <- renderPlot({
        theInput <- input$Maker
        print(theInput)
        mySet <- subset(mpg,  manufacturer==theInput)
        plot(saudi$displ,saudi$cty, xlim=c(0,7), ylim=c(0,35),pch = 16, col="red", xlab="displacement",ylab="city")
        points(mySet$displ,mySet$cty, xlim=c(0,7), ylim=c(0,35), pch = 16,col="blue")
        legend("topright", legend=c("audi", theInput),col=c("red", "blue"), pch = 16,  cex=0.8)
    })
})