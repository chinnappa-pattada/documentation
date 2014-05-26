library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(1, 2, 3), 
  y = c(4, 5, 6), 
  name = "yaxis1 data"
)
trace2 <- list(
  x = c(2, 3, 4), 
  y = c(40, 50, 60), 
  name = "yaxis2 data", 
  yaxis = "y2"
)
trace3 <- list(
  x = c(3, 4, 5), 
  y = c(400, 500, 600), 
  name = "yaxis3 data", 
  yaxis = "y3"
)
trace4 <- list(
  x = c(4, 5, 6), 
  y = c(40000, 50000, 60000), 
  name = "yaxis4 data", 
  yaxis = "y4"
)
trace5 <- list(
  x = c(5, 6, 7), 
  y = c(400000, 500000, 600000), 
  name = "yaxis5 data", 
  yaxis = "y5"
)
trace6 <- list(
  x = c(6, 7, 8), 
  y = c(4000000, 5000000, 6000000), 
  name = "yaxis6 data", 
  yaxis = "y6"
)

layout <- list(
  width = 800, 
  xaxis = list(domain = c(0.3, 0.7)), 
  yaxis = list(
    title = "yaxis title", 
    titlefont = list(color = "#1f77b4"), 
    tickfont = list(color = "#1f77b4")
  ), 
  yaxis2 = list(
    overlaying = "y", 
    side = "left", 
    anchor = "free", 
    position = 0.15, 
    title = "yaxis2 title", 
    titlefont = list(color = "#ff7f0e"), 
    tickfont = list(color = "#ff7f0e")
  ), 
  yaxis3 = list(
    overlaying = "y", 
    side = "left", 
    anchor = "free", 
    position = 0, 
    title = "yaxis3 title", 
    titlefont = list(color = "#2ca02c"), 
    tickfont = list(color = "#2ca02c")
  ), 
  yaxis4 = list(
    overlaying = "y", 
    side = "right", 
    anchor = "x", 
    title = "yaxis4 title", 
    titlefont = list(color = "#d62728"), 
    tickfont = list(color = "#d62728")
  ), 
  yaxis5 = list(
    overlaying = "y", 
    side = "right", 
    anchor = "free", 
    position = 0.85, 
    title = "yaxis5 title", 
    titlefont = list(color = "#9467bd"), 
    tickfont = list(color = "#9467bd")
  ), 
  yaxis6 = list(
    overlaying = "y", 
    side = "right", 
    anchor = "free", 
    position = 1.0, 
    title = "yaxis6 title", 
    titlefont = list(color = "#8c564b"), 
    tickfont = list(color = "#8c564b")
  ), 
  title = "multiple y-axes example"
)

response <- p$plotly(trace0, trace1, trace2, trace3, trace4, trace5, kwargs=list(layout=layout, filename="multiple-axes-multiple", fileopt="overwrite"))
url <- response$url
filename <- response$filename