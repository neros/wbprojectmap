library(shiny)
library(ggplot2)

shinyUI(
     fluidPage(align='center',
     
     title = "World Bank Country-Level Project Map",
     
     hr(),
     HTML("<div style='width:1100px'>"),
     fluidRow(
          column(12,align='left',
                h5("Welcome to the interactive World Bank Project Activity Map!"),
                HTML("<span style='font-size:11px'><u>User documentation:</u> This application displays the scaled concentration of country-level project funding over time by country of project implementation. 
                   There are two metrics of analyis: <b>(1)</b> To display the relative funding concentration by a single year, for all projects active during that year, controlled by the slide bar on the left <b>(2)</b> With the slider on the right, to 
                   display the relative funding concentration for a time period range, for all projects active during the interval.</span>"),
                HTML("<span style='font-size:11px'><b>(*)</b> Display the results of server-side calculations from year selections: Use your mouse to <b><i>hover over active countries</i></b> for more details, including number of project and total lending volumes for the period. Note: the analysis dispaly will update according to slider input selected, and the 
                   appropriate time period will be reflected in the title above.  Also try using the play button below the slider to see how funding strategies have evolved over time (unfortunately googleVis and shiny don't play perfectly together and the update flickers). 
                   Finally, if you're interested in learning more about World Bank projects, follow this link and explore the source project data: <a href='http://data.worldbank.org/data-catalog/projects-portfolio'>http://data.worldbank.org/data-catalog/projects-portfolio</a></span>"),
                br()
          ),
          column(6,align="center",
                 h5("Projects Active in Year:"),
                 sliderInput('activeYear', 'Year',min=1947, max=2015, value=1947,step=1, round=0, sep="", animate=T)
          ),
          column(6, align="center",
                 h5("Projects Active during Period Range:"),
                 sliderInput('rangeYear', 'Year',min=1947, max=2015, value=c(1947,2015),step=1, round=0, sep="", animate=T)
          )
     ),
     fixedRow(
          column(1,div(style = "height:520px;background-color:transparent;", "")),
          column(10,align="center",
                 h4(uiOutput("selectTitle")),
                 br(),
                 htmlOutput("projectMap")
          ),
          column(1,div(style = "height:520px;background-color:transparent;", ""))
     ),
     fixedRow(
          column(12,align="right",
          HTML("<span style='font-size:11px'>Created by Soren Heitmann <i><a href='mailto://sheitmann@ifc.org'>sheitmann@ifc.org</a></i></span>")
          )
     ),
     HTML("</div>")
    
     )
)