library(shiny)

shinyUI(fluidPage(
    headerPanel(title = "Text Input Shiny Widget"),
    sidebarLayout(
        sidebarPanel(
            textInput("ProjCode","Enter yout project code"),
            textInput("ProjName","Enter the project name"),
            textInput("tech","Technology your are using"),
            radioButtons("loc","what is your location?",
                         choices = c("off-site","on-site"),
        #if you want a constant answer and choices in arrow
        selected ="on site",inline = T)
        ),
        mainPanel(
            textOutput("project_code"),
            textOutput("project_name"),
            textOutput("Technology_used"),
            textOutput("location")
        )
    )
)
)