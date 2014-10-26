shinyUI(fluidPage(
  
  titlePanel("Shiny Application with Faithful Data"),
  sidebarLayout(
    sidebarPanel(
  sliderInput(inputId = "n_breaks",
              label = "Number of bins in histogram (approximate):",
              min = 10, max = 100, value = 35, step = 5),
  
    
  checkboxInput(inputId = "density",
                label = strong("Show density estimate"),
                value = FALSE)
    ),
  mainPanel(
  plotOutput(outputId = "main_plot", height = "300px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Density adjustment:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  )))
  
))
