library(shiny)
shinyUI(fluidPage(
        titlePanel("Linear regression fit"),
        h5("Prepared by Milca Tarshish (3-Jul-2019)"),
        sidebarLayout(
                sidebarPanel(width=5,
                        h4("input x and y coordinates of 4 points:"),
                        numericInput("x1", "Point 1: X coordinate:", value = 10,  min = -100, max = 100, step = 1,width=150),
                        numericInput("y1", "Point 1: y coordinate:", value = 15,  min = -100, max = 100, step = 1,width=150),
                        numericInput("x2", "Point 2: X coordinate:", value = -60, min = -100, max = 100, step = 1,width=150),
                        numericInput("y2", "Point 2: y coordinate:", value = -13, min = -100, max = 100, step = 1,width=150),
                        numericInput("x3", "Point 3: X coordinate:", value = 55,  min = -100, max = 100, step = 1,width=150),
                        numericInput("y3", "Point 3: y coordinate:", value = 20,  min = -100, max = 100, step = 1,width=150),
                        numericInput("x4", "Point 4: X coordinate:", value = -88, min = -100, max = 100, step = 1,width=150),
                        numericInput("y4", "Point 4: y coordinate:", value = -33, min = -100, max = 100, step = 1,width=150),
                        checkboxInput("show_points", "Show/Hide points",value=TRUE),
                        checkboxInput("show_regression_line", "Show/Hide regression line",value=TRUE),
                        checkboxInput("show_legend", "Show/Hide legend",value=TRUE)
                ),
                mainPanel(width=7,
                        h3("Point chosen and their linear regression line fit"),
                        plotOutput("plot1")
                )
        )
))