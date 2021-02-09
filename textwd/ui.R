library(shiny)

shinyUI(fluidPage(
    headerPanel(title = "Text Input Shiny Widget"),
    sidebarLayout(
        sidebarPanel(
            textInput("ProjCode","Enter yout project code"),
            textInput("ProjName","Enter the project name"),
            textInput("tech","Technology your are using")
        ),
        mainPanel(
            textOutput("project_code"),
            textOutput("project_name"),
            textOutput("Technology_used")
        )
    )
)
    
    
)