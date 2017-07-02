library(shiny)

shinyServer(function(input, output) {
        
        values <- reactiveValues()
        # Calculate the interest and amount    
        observe({
                input$action_Calc
                values$int <- isolate({
                        input$num_principal * input$slider_intrate/100 *
                                input$slider_num  
                })
                values$amt <- isolate(input$num_principal) + values$int
                })
        
        
        # Show calculated values
        
        output$text_int <- renderText({
                if(input$action_Calc == 0) ""
                else
                        paste("Simple Interest,$:", values$int)
        })
        
        output$text_amt <- renderText({
                if(input$action_Calc == 0) ""
                else 
                        paste("Total Amount (Principal plus Interest,$):", values$amt)
        })
        
})