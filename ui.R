###############################################################################
# UI for Movie Picker
#
# Author: Vivek Katial
# Created 2020-07-15 12:28:21
###############################################################################

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Random Movie Picker"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        actionButton("goButton", "Pick Movie!")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3(textOutput("movie")),
       p("Directed by", textOutput("director"), "-", textOutput("year"))
    )
  )
))
