library(shiny)
library(googleVis)
library(shinyapps)

source('./wbp.R')

selectedInput <- "active"
rangeInput <- c(1947,2015)
activeInput <- 1947
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
        
     output$selectTitle <- renderUI({
     
     input$rangeYear;
     input$activeYear;
     title <- NULL
     if (input$rangeYear[1] == rangeInput[1] & input$rangeYear[2] == rangeInput[2]) 
     {
          activeInput <<- input$activeYear
          selectedInput <<- "active" 
          title <- paste("Globally Active World Bank Projects in the Year ",input$activeYear,sep="")
          mapData <<- getMapData(input$activeYear)
     }
     else
     {
          rangeInput <<- input$rangeYear
          selectedInput <<- "range" 
          title <- paste("Globally Active World Bank Projects in the Period from ",input$rangeYear[1]," to ",input$rangeYear[2],sep="")
          mapData <<- getMapData(input$rangeYear[1],input$rangeYear[2])
     }
     
     title;
     })
     
     output$projectMap <- renderGvis({

          
          
          input$rangeYear;
          input$activeYear;
          getMap();
     })
})