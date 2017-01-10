

#-------------------------------------------------------------------------------------------------------------------
# dashboardpage 
#-------------------------------------------------------------------------------------------------------------------


dashboardPage( skin = 'blue', 
      
  
#-------------------------------------------------------------------------------------------------------------------
# header 
#-------------------------------------------------------------------------------------------------------------------

    dashboardHeader(title = 'WDMP - Dashboard Solution', titleWidth = 450),
 
#-------------------------------------------------------------------------------------------------------------------
# sidebar
#-------------------------------------------------------------------------------------------------------------------

   dashboardSidebar(
    # sidebarSearchForm(textId = 'search', buttonId = 'search_button', label = 'Search...'),
    sidebarMenu(
       menuItem('Dashboard', tabName = 'Dashboard', icon = icon('dashboard'))
      ,menuItem('About', tabName = 'About', icon = icon('info'))
      ,dateRangeInput(inputId = 'date_range', label = 'Date Range:')
      
    )
  ),

#-------------------------------------------------------------------------------------------------------------------
# Body 
#-------------------------------------------------------------------------------------------------------------------

  dashboardBody(tags$head(tags$style(HTML('
                                          /* logo */
                                          .skin-blue .main-header .logo {
                                          background-color: #00ABC2; color: #000000;
                                          }
                                          
                                          /* logo when hovered */
                                          .skin-blue .main-header .logo:hover {
                                          background-color: #AAB7B8;
                                          }
                                          
                                          /* navbar (rest of the header) */
                                          .skin-blue .main-header .navbar {
                                          background-color: #00ABC2;
                                          }        
                                          
                                          /* main sidebar */
                                          .skin-blue .main-sidebar {
                                          background-color: #00ABC2;
                                          }
                                          
                                          /* active selected tab in the sidebarmenu */
                                          .skin-blue .main-sidebar .sidebar .sidebar-menu .active a{
                                          background-color: #00ABC2; color:#000000;
                                          }
                                          
                                          /* other links in the sidebarmenu */
                                          .skin-blue .main-sidebar .sidebar .sidebar-menu a{
                                          background-color: #00ABC2;
                                          color: #000000;
                                          }
                                          
                                          /* other links in the sidebarmenu when hovered */
                                          .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover{
                                          background-color: #AAB7B8;
                                          }
                                          /* toggle button when hovered  */                    
                                          .skin-blue .main-header .navbar .sidebar-toggle:hover{
                                          background-color: #AAB7B8;
                                          }
                                          ')))
                ,tags$head(tags$link(rel = 'stylesheet', type = 'text/css',href = 'custom.css'))
    ,fluidRow(
     
    tabItems(
    
## Tab  1 
       tabItem(tabName = 'Dashboard',
                valueBox(value = dim(bank)[1], subtitle = 'Number of Customers contacted:', icon = icon('user'), color = 'yellow')
               , box(title = 'box1', footer = 'footer_message' , solidHeader = T, collapsible = T )
               , box(title = 'box2', footer = 'footer_message' , solidHeader = T, collapsible = T )
               , box(title = 'box3', footer = 'footer_message' , solidHeader = T, collapsible = T )
               )
    
    
## Tab 2     
      ,tabItem(tabName = 'About', h2('about comes here'))
        
        
      )
    )
  )
)

