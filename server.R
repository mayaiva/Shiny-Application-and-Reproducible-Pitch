
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# Define server logic for random distribution application
shinyServer(function(input, output) {
        
       
        data <- reactive({  
                dist <- switch(input$dist,
                               norm = rnorm,
                               unif = runif,
                               rnorm)
                
                dist(input$n)
        })
        
        # Generate a plot of the data. 
        output$plot <- renderPlot({
                dist <- input$dist
                n <- input$n
                
                hist(data(), 
                     main=paste('r', dist, '(', n, ')', sep=''))
        })
        
        # Generate a summary of the data
        output$summary <- renderPrint({
                summary(data())
        })
        
        # Generate an HTML table view of the data
        output$table <- renderTable({
                data.frame(x=data())
        })
})