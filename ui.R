library(shiny)
library(pgmm) 
library(classifly)
olive <- olive[,-2]

shinyUI(pageWithSidebar(
  headerPanel('Olive k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(olive), selected=names(olive)[[3]]),
    selectInput('ycol', 'Y Variable', names(olive),
                selected=names(olive)[[4]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 5),
    helpText("Create clusters with olive data.")
  
    ),
  mainPanel(
    h4("Plots"),
    plotOutput('plot1'),
    
    h4("Summary"),
    verbatimTextOutput("summary")
  )
))