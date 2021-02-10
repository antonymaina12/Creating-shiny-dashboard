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
                    #adding image
                    tabPanel("Help",tags$img(src = "dp.jpg",width = 180,height = 150)),
                    tabPanel("About",mainPanel(uiOutput("video")),
                    #embedding a youtube video
                    HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/UwwQrEcXtfc?start=17" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')),
                    # tags$video(src = "feed.mp4",width = "500px",height = "350px",
                    #            type ="video/mp4",controls = "controls"),
                    
                    tabPanel("Data",tableOutput("mtcars")),
                    tabPanel("summary",verbatimTextOutput("sum")),
                    tabPanel("plot",plotOutput("plot"))
                    )
    )
    )
)
    
)
