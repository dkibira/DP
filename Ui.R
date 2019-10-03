#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

shinyServer(
    pageWithSidebar(
        headerPanel("My Project Shiny App"),
        
        sidebarPanel(

            selectInput("Maker", "Please Select  Car Manufacturer to compare with Audi",
                        choices=c("chevrolet","dodge","ford","honda","hyundai","jeep","land rover","lincoln","mercury","nissan","pontiac","subaru","toyota","volkswagen"))

         ),
    mainPanel(
        plotOutput("myPlot")
    )
    )
)

