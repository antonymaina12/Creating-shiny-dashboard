
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$mtcars<- renderTable({
        mtcars[,c("mpg", input$ngear)]
    })
    output$sum<- renderPrint({
        summary(mtcars[,c("mpg",input$ngear)])
    })
    output$plot<-renderPlot({
        with(mtcars[,c("mpg",input$ngear)],boxplot(mpg~gear))
    })

})
