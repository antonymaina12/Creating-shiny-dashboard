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
        selected ="on site",inline = T),
        sliderInput("ndayspent","No. of days spent",1,100,20
                    #if you want a range on slider
                    #value = c(10,20)
                    ),
        selectInput("dept","what is your department",choices = 
                        #multiple is True when you want to select more that one
                        c("Marketing","Finance","IT"),multiple = T)
        ),
        mainPanel(
            textOutput("project_code"),
            textOutput("project_name"),
            textOutput("Technology_used"),
            textOutput("location"),
            textOutput("no_of_days_spent"),
            textOutput("department")
        )
    )
)
)