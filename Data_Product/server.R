#### Course Project of Developing Data Products
#### Created By : Bimod Dev Panta
#### Created on : 4th April, 2016
#### Note : Shiny Applicaton 
#### File :server.R

library(shiny)
data(EuStockMarkets)
shinyServer(
  function(input, output) {
    output$plot_variable <- renderPlot({
      plot(EuStockMarkets[,input$idx], main = input$idx, xlab = "Time", ylab = "Index Level", type = "l", col="red",lwd="3")
      out_median <- median(EuStockMarkets[,input$idx])
      abline(h=out_median, col = "Green",lwd="5")
      output$out_median <- renderPrint(out_median)
    })
  }
)