###############################################################################
# Server Logic for Movie Picker
#
# Author: Vivek Katial
# Created 2020-07-15 12:28:36
###############################################################################

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    d_movie <- reactive({
        shiny::validate(
            need(input$goButton, "")
        )
        d_movies %>% 
            sample_n(1)
    })
    
    output$movie <- renderText({
        d_movie()$Movie
    })
    
    output$director <- renderText({
        d_movie()$Director
    })
    
    output$year <- renderText({
        d_movie()$Year
    })
  
})
