library(shiny)
library(shinydashboard)

shinyServer(function(input, output) {
    
    output$histogram<-renderPlot({
        hist(faithful$eruptions,breaks = input$bins)
    })
    output$approvedSales <- renderInfoBox({
        infoBox("Approval Sales","10,00,000",
                icon = icon("bar-chart-o"))
    })
    
    output$Itemrequested<-renderValueBox({
        valueBox(15*300,"Item Requested by Employees",
                 icon = icon("fire"),color = "yellow")
    })
})




