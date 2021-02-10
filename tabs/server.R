
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    mtreact <-reactive({
        mtcars[,c("mpg",input$ngear)]
    })
    
    output$mtcars<- renderTable({
        mtreact()
    })
    output$sum<- renderPrint({
       summary(mtreact()) 
    })
    output$plot<-renderPlot({
        with(mtreact(),boxplot(mpg~mtreact()[,2]))
    })
    output$video<- renderUI({
        tags$video(src = "feed.mp4",type = "video/mp4",controls = "controls")
    })

})
