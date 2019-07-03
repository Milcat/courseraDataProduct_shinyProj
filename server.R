library(shiny)
shinyServer(function(input, output) {
        output$plot1 <- renderPlot({
                set.seed(14)
                minX <- input$sliderX[1]
                maxX <- input$sliderX[2]
                minY <- input$sliderY[1]
                maxY <- input$sliderY[2]
                pointsX<-c(input$x1,input$x2,input$x3,input$x4)
                pointsY<-c(input$y1,input$y2,input$y3,input$y4)
                points_col=c("green","orange","purple","red")
                show_p<-ifelse(input$show_points,"p","n")
                plot(pointsX, pointsY, xlab = "x value", ylab = "y value",type="n",xlim = c(-100, 100), ylim = c(-100, 100))
                lm_line<-lm(pointsY~pointsX)
                show_line<-ifelse(input$show_regression_line,"blue","white")
                abline(lm_line,lwd=2,col=show_line)
                abline(h=0)
                abline(v=0)
                points(pointsX, pointsY, type=show_p,lwd=10,col=points_col)
                if (input$show_legend) {
                        legend("topright",legend=c("point1","point2","point3","point4"),col=points_col,pch=20)
                }
        })
})