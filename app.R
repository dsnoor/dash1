## app.R ##
library(shinydashboard)

  #Header content
  header <- dashboardHeader(title = "My Dashboard", 
                            
  #Headerbar Messages Menu
  dropdownMenu(type = "messages",
    messageItem(from = "Dev Alert", message = "Late check-ins for 18.4 release."),
    messageItem(from = "New User", message = "How do I register?", icon = icon("question"), time = "13:45"),
    messageItem(from = "CM Team", message = "The new build server is ready.", icon = icon("life-ring"), time = "2014-12-01")
  )
  )
  
  #Sidebar content
  sidebar <- dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName ="dashboard", icon = icon("dashboard")),
      menuItem("Calendars", tabName ="calendars", icon = icon("calendar"))
    )
  )
  
  #Body content
  body <- dashboardBody(
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
  
ui <- dashboardPage(header, sidebar, body)

server <- function(input, output) { }

shinyApp(ui, server)