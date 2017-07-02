library(shiny)

shinyUI(fluidPage(
        titlePanel("Amout of Interest Calculator"),
        sidebarLayout(
                sidebarPanel(
                        helpText("This app calculates the amount of interest 
                                 "),            
                        br(),            
                        numericInput("num_principal",
                                     label = h6("Enter the principal amount (in $)"),
                                     value = 1000),
                        br(),            
                        sliderInput("slider_intrate",
                                    label = h6("Choose the annual interest rate (in %)"),
                                    min = 0, max = 10, value = 5),
                        
                        br(),            
                        sliderInput("slider_num",
                                    label = h6("Choose the number of years"),
                                    min = 0, max = 20, value = 5),
                        br(),
                        br(),            
                        actionButton("action_Calc", label = "Calculate")        
                        ),
                mainPanel(
                        tabsetPanel(
                                tabPanel("Calculations and Documentations",
                                         p(h5("Calculated values:")),
                                         textOutput("text_int"),
                                         textOutput("text_amt"),
                                         br(),
                                         helpText("This application calculates 
                                                  the amount of interest and the
                                                  total amount (principal and interest"),
                                         HTML("<u><b>Equation for calculation: </b></u>
                                              <br> <br>
                                               <b> TA = P(1 + rt)
                                               <br>
                                                where: <br>
                                               TA = Total amount (Principal + Interest) <br>
                                               P = Principal amount <br>
                                               r = interest rate <br>
                                               t = number of years
                                              ")
                                         )
                                         )
                                         )
                                         )
                                         )
                                         )