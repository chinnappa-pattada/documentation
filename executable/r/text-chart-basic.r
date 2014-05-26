library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  x = c(0, 1, 2), 
  y = c(1, 1, 1), 
  name = "Lines, Markers and Text", 
  text = c("Text A", "Text B", "Text C"), 
  type = "scatter", 
  mode = "lines+markers+text", 
  textposition = "top"
)
trace2 <- list(
  x = c(0, 1, 2), 
  y = c(2, 2, 2), 
  name = "Markers and Text", 
  text = c("Text D", "Text E", "Text F"), 
  type = "scatter", 
  mode = "markers+text", 
  textposition = "bottom"
)
trace3 <- list(
  x = c(0, 1, 2), 
  y = c(3, 3, 3), 
  name = "Lines and Text", 
  text = c("Text G", "Text H", "Text I"), 
  type = "scatter", 
  mode = "lines+text", 
  textposition = "bottom"
)

layout <- list(showlegend = FALSE)

response <- p$plotly(trace0, trace1, trace2, kwargs=list(layout=layout, filename="text-chart-basic", fileopt="overwrite"))
url <- response$url
filename <- response$filename