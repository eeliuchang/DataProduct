library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Illustrating markup"),
        
        sidebarPanel(
                h2('Gender Prediction System'),
                h4('Please enter your information below'),
                # h2('h2 text'),
                # h3('h3 text'),
                #h4('h4 text'),
                textInput(inputId="id1", label="Your name"),
                numericInput('id2','What is your age?',20,min=1,max=100, step=1),
                numericInput('time','How long do you need to prepare yourself to work in the morning (minutes)',20,min=1,max=100, step=1),
                
                checkboxGroupInput("id3","What are your preferred colours?",
                                 c("Blue"="Blue",
                                    "Red"="Red",
                                    "Yellow"="Yellow",
                                     "White"="White",
                                        "black"="black")),
                dateInput("date","Date:") , 
                submitButton('Submit')
        ),
        mainPanel(
                h3('Gender Prediction System'),
              ##  code('some code'),
                h4('Your name entered'),
                verbatimTextOutput("oid1"),
                h4('Your age entered'),
                verbatimTextOutput("oid2"),
                h4('Your preparation time in the morning entered'),
                verbatimTextOutput("otime"),
               h4('Your preferred colours are'),
               verbatimTextOutput("ocolour"),
                h4('Today date'),
                verbatimTextOutput("odate"),
                h3('Your gender prediction result'),
              verbatimTextOutput("prediction"),
                p('I hope this is the correct prediction for you : )')
        )
))



# library(manipulate)
# myHist <- function(mu){
#         library(datasets)
#         data(galton)
#         hist(galton$child,col="blue",breaks=100)
#         lines(c(mu,mu),c(0,150),col="red",lwd=5)
#         mse <- mean((galton$child - mu)^2)
#         text(63,150, paste("mu=", mu))
#         text(63, 140, paste("MSE = ", round(mse,2)))
# }
# manipulate(myHist(mu), mu = slider(62,74, step=0.5))