library(shiny)

shinyUI(fluidPage(
    headerPanel(title = "Shiny Tabset Example"),
    sidebarLayout(
        sidebarPanel(
            selectInput("ngear","select the gear number",c("cylinders" = "cyl",
                        "Transmission" = "am","Gears" = "gear"))
        ),
    mainPanel(
        tabsetPanel(type = "tab",
                    tabPanel("Data",tableOutput("mtcars")),
                    tabPanel("summary",verbatimTextOutput("sum")),
                    tabPanel("plot",plotOutput("plot"))
                    )
    )
    )
)
    
)