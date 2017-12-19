## app.R ##
library(shinydashboard)

ui <- dashboardPage(
  
  #Header content
  dashboardHeader(title = "My Dashboard"),
  
  #Sidebar content
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName ="dashboard", icon = icon("dashboard")),
      menuItem("Calendars", tabName ="calendars", icon = icon("calendar"))
    )
  ),
  
  #Body content
  dashboardBody(
    tabItems(
      #First tab content
      tabItem(tabName = "dashboard", 
        h2("Dashboard tab content")
      ),
      
      #Second tab content
      tabItem(tabName = "calendars",
        h2("Calendars tab content")
      )
    )
  )
)
  

server <- function(input, output) { }

shinyApp(ui, server)