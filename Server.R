library(shiny)

## My prediction algorithm
genderPred <- function(time)
{
        
        if (time > 30)
                "Female"
        else
                "Male"
}



shinyServer(
        function(input, output)
        {
                output$oid1 <- renderPrint({input$id1})
                
                output$oid2 <- renderPrint({input$id2})
                
                output$ocolour <- renderPrint({input$id3})
                
                output$otime <- renderPrint({input$time})
                
                output$prediction <- renderPrint({genderPred(input$time)})
                
                output$odate <- renderPrint({input$date})
                
        }
                )