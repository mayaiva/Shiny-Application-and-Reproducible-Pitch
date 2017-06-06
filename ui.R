
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# Define UI for random distribution application 
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Tabsets"),
        
        # Sidebar with controls to select the random distribution type
        # and number of observations to generate. Note the use of the br()
        # element to introduce extra vertical spacing
        sidebarPanel(
                radioButtons("dist", "Distribution type:",
                             list("Normal" = "norm",
                                  "Uniform" = "unif")),
                br(),
                
                sliderInput("n", 
                            "Number of observations:", 
                            value = 500,
                            min = 1, 
                            max = 1000)
        ),
        
        # Show a tabset that includes a plot, summary, and table view
        # of the generated distribution
        mainPanel(
                tabsetPanel(
                        tabPanel("Plot", plotOutput("plot"))
                        
                )
        )
))