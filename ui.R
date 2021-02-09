library(shiny)
library(shinydashboard)
#adding the menu to the tabs and adding icons to menu tabs
shinyUI(
    dashboardPage(
        dashboardHeader(title = "A.K HOLDINGS",
        #creating notification,task and warning bells
            dropdownMenu(type = "notification",
                    notificationItem(
                    text = "2 new tabs added to the dashboard",
                    icon = icon("dashboard"),
                    status = "success"
                    ),
                    notificationItem(
                    text = "server is running at 95% load",
                    icon = icon("warning"),
                    status = "warning")
                    ),
               dropdownMenu(type = "message",
                 messageItem(from = "Finance update",
                                         message = "we are on threshold"),
                messageItem(from = "sales update",
                message = "Sales are upto 55%",icon = icon("bar_chart"),
                     time = "22:00"),
                 messageItem(from = "sales update",
                  message = "Sales meeting at 6PM on Monday",
                            icon = icon("handshake-o"),time = "09-2-2021")
                ),
            dropdownMenu(type = "task",
                         taskItem(
                         value = 80,
                         color = "aqua",
                         "Shiny Dashboard education"),
                         taskItem(
                             value = 55,
                             color = "green",
                             "Overall R education"),
                         taskItem(
                             value = 40,
                             color = "red",
                             "Data science education")
            )),
        dashboardSidebar(
            
            sidebarMenu(
                sidebarSearchForm("searchText","buttonsearch","search"),
                menuItem("Dashboard",tabName = "dashboard",icon = icon("dashboard")),
                menuSubItem("Dashboard finance",tabName = "finance",
                            icon = icon("donate", lib = "font-awesome")),
                menuSubItem("Dashboard sales",tabName = "sales",
                            icon = icon("money-check-alt", lib = "font-awesome")),
                #highlighting new menu added
                menuItem("Detail Analysis",badgeLabel = "New",badgeColor = "green"),
                menuItem("Raw data")
            )),
        dashboardBody(
            #putting things inside a menu
            tabItems(
                tabItem(tabName = "dashboard",
                    fluidRow(
                        infoBox("Sales",1000,icon = icon("thumbs-up")),
                        infoBox("Conversion %",'20%',icon = icon("warning")),
                        infoBoxOutput("approvedSales")
                    ),
                    fluidRow(
                    #creating a value box
                        valueBox(15*200,"Budget for 15 days",icon = icon("hourglass-3")),
                        valueBoxOutput("Itemrequested")
                        
                    ),
                    fluidRow(
                    #creating a tab and having panels innit
                    tabBox(
                    #putting the title and a solid color background
                    tabPanel(title = "Histogram of Faithful",status = "primary",
                        solidHeader = TRUE,plotOutput("histogram")),
                    tabPanel(title = "Controls for Dashboard",status = "warning",
                        solidHeader = TRUE,background = "purple",
                        "Use these controls to fine tune your dashboard",br(),
                        "Do not use a lot of control as it confuses the user",
                        sliderInput("bins","Number of Breaks",1,100,50),
                        #putting the text box
                        textInput("text_input","Search Opportunities",value = "123456"))
                    
                    )
                    )),
                tabItem(tabName = "finance",
                        h1("finance Dashboard")
                ),
                tabItem(tabName = "sales",
                        h2("sales Dashboard")
                )
            )
        )
    )
)

