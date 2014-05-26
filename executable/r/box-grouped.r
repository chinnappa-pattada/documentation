library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

x <- c('day 1', 'day 1', 'day 1', 'day 1', 'day 1', 'day 1', 
       'day 2', 'day 2', 'day 2', 'day 2', 'day 2', 'day 2')

trace1 <- list(
  y = c(0.2, 0.2, 0.6, 1.0, 0.5, 0.4, 0.2, 0.7, 0.9, 0.1, 0.5, 0.3), 
  x = x, 
  type = "box", 
  name = "kale", 
  marker = list(color = "#3D9970")
)
trace2 <- list(
  y = c(0.6, 0.7, 0.3, 0.6, 0.0, 0.5, 0.7, 0.9, 0.5, 0.8, 0.7, 0.2), 
  x = x, 
  type = "box", 
  name = "radishes", 
  marker = list(color = "#FF4136")
)
trace3 <- list(
  y = c(0.1, 0.3, 0.1, 0.9, 0.6, 0.6, 0.9, 1.0, 0.3, 0.6, 0.8, 0.5), 
  x = x, 
  type = "box", 
  name = "carrots", 
  marker = list(color = "#FF851B")
)

layout <- list(
  boxmode = "group", 
  yaxis = list(
    zeroline = FALSE, 
    title = "normalized moisture"
  )
)

response <- p$plotly(trace0, trace1, trace2, kwargs=list(layout=layout, filename="box-grouped", fileopt="overwrite"))
url <- response$url
filename <- response$filename