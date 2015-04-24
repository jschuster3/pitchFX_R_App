library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Analyzing Pitch Selection with Baseball's pitch F/X Data"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("speed", label=h2("Speed of Pitch"),value=0),
      numericInput("hmov", label=h2("Horizontal Movement"),value=0),
      numericInput("vmov", label=h2("Vertical Movement"),value=0),
      numericInput("balls", label=h2("Balls"),value=0),
      numericInput("strikes", label=h2("Strikes"),value=0),
      numericInput("HR_Rate", label=h2("Home Run Rate"),value=0),
      numericInput("SO_Rate", label=h2("Strikeout Rate"),value=0),
      numericInput("BB_Rate", label=h2("Walk Rate"),value=0)
      ),
    mainPanel(
      h1('Right Handed Batter'),
      verbatimTextOutput("summaryR"),
      h1('Left Handed Batter'),
      verbatimTextOutput("summaryL")
    )
  )
))