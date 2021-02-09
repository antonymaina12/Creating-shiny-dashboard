library(shiny)

shinyServer(function(input, output) {
    output$project_code<- {(
        renderText(input$ProjCode)
    )}
    output$project_name<- {(
        renderText(input$ProjName)
    )}
    output$Technology_used<-{(
        renderText(input$tech)
    )}
})
