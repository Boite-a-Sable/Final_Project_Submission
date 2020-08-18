#

library(shiny)
library(markdown)
shinyUI(fluidPage(
    titlePanel("Predicting the Next Word"),
    sidebarLayout(
        sidebarPanel(
            helpText("Input your phrase here, and select the number of words to be predicted"),
            textInput("str",label = h3("Enter your text:"),value = ""),
            numericInput("n",label = h3("No of words to be predicted:"),min = 1,max = 50,value = 5,step = 1)
            # ,submitButton("Predict!")
        )
        ,
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Main",
                                 h2("Predictions:"),
                                 h4(textOutput("predict",container = pre))
                        ),
                        tabPanel("Help",
                                 includeMarkdown("readme.md"))
                        
            )
        )
    )
))
